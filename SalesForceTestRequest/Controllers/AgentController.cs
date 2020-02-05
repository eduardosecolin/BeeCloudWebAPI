﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json;
using SalesForceTestRequest.Models;
using SalesForceTestRequest.ServiceClass;
using SalesForceTestRequest.Models.ResourcesStatic;
using SalesForceTestRequest.Utils;
using System.Net.Http.Headers;
using System.Text;

namespace SalesForceTestRequest.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class AgentController : ApiController
    {

        private CApp myApp;
        private Timer mpAnswerCallTimer;
        private Timer mpUnloadTimer;
        private CCall mpCall;
        private int miAnswerCallTickCount;

        public AgentController()
        {
            myApp = new CApp();
            mpCall = new CCall();
            myApp.Screenpop += MyApp_Screenpop;
            myApp.StateChange += CApp_StateChange;
        }

        #region Received Call Methods

        private void ResetAnswerCallPanel()
        {
            if (mpAnswerCallTimer != null)
            {
                mpAnswerCallTimer.Dispose();
            }
            mpAnswerCallTimer = null;
        }

        public void mpUnloadTimer_Fire(Object state)
        {
            mpUnloadTimer.Dispose();
            mpUnloadTimer = null;
            return;
        }

        public void mpAnswerCallTimer_Fire(Object state)
        {

            miAnswerCallTickCount--;

            if (miAnswerCallTickCount < 0)
            {
                ResetAnswerCallPanel();
            }
        }

        public void CApp_StateChange(Object pSender, CStateChangeArgs pArgs)
        {
            try
            {
                CState pNewState = pArgs.NewState;
                CApp obj = (CApp)pSender;

                switch (pArgs.NewState.Id)
                {
                    case AgentStateId.asACTIVE:
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.Name = obj.CurrentAgent.AgentId;
                        if (obj.CurrentCall != null)
                        {
                            MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.CallId = obj.CurrentCall.CallID;
                            MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.PhoneNumber = obj.CurrentCall.PhoneNumber;
                            MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.Name = obj.CurrentCall.FirstName;
                        }
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        break;
                    case AgentStateId.asPREVIEW:
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.CallId = obj.CurrentCall.CallID;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.Name = obj.CurrentCall.FirstName;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.PhoneNumber = obj.CurrentCall.PhoneNumber;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        break;
                    case AgentStateId.asAUTHENTICATED:
                        if (!string.IsNullOrEmpty(MainObject.MainList.FirstOrDefault(x => x.Key == obj.CurrentAgent.AgentId).Key))
                        {
                            MainObject.MainList.Remove(obj.CurrentAgent.AgentId);
                            MainObject.MainEventList.Remove(obj.CurrentAgent.AgentId);
                        }
                        MainObject.MainList.Add(obj.CurrentAgent.AgentId, myApp);
                        GenericObjectParameters rcp = new GenericObjectParameters();
                        rcp.StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        rcp.Call.Name = obj.CurrentAgent.AgentId;
                        MainObject.MainEventList.Add(obj.CurrentAgent.AgentId, rcp);
                        break;
                    case AgentStateId.asDIALING:
                    case AgentStateId.asDIALING_CONSULTATION:
                    case AgentStateId.asRINGING:
                    case AgentStateId.asWRAP:
                    case AgentStateId.asHELD:
                    case AgentStateId.asWAITING:
                    case AgentStateId.asLOGGED_OUT:
                    case AgentStateId.asACTIVE_INTERNAL:
                    case AgentStateId.asNOT_READY:
                    case AgentStateId.asLOGGING_IN:
                    case AgentStateId.asIDLE:
                    case AgentStateId.asPARKED:
                    case AgentStateId.asCONSULTING:
                    case AgentStateId.asCONFERENCE:
                    case AgentStateId.asCHATTING:
                    case AgentStateId.asINACTIVE:
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        break;
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
            }
        }

        private void MyApp_Screenpop(object pSender, CScreenpopArgs pArgs)
        {
            try
            {
                CApp mpApp = (CApp)pSender;
                if (MainObject.MainEventList.FirstOrDefault(x => x.Key == mpApp.CurrentAgent.AgentId).Key != string.Empty)
                {
                    MainObject.MainEventList[mpApp.CurrentAgent.AgentId].Call.ShowScreenPop = true;

                }

            }
            catch (Exception ex)
            {
                Log.logException(ex);
                throw ex;
            }
        }

        #endregion

        #region GET Methods

        // GET: api/Agent/Get
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Agent/Get/5
        public string Get(int id)
        {
            return "value";
        }

        // GET: api/Agent/GetServicesTransfer
        [Authentication.BasicAuthentication]
        [HttpGet]
        public IEnumerable<string> GetServicesTransfer([FromUri]UserParameters user)
        {
            try
            {
                List<TransferServicesParameters> listTransfer = new List<TransferServicesParameters>();
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    var services = mpApp.GetServices();
                    foreach (CSimpleService item in services)
                    {
                        TransferServicesParameters tsp = new TransferServicesParameters();
                        tsp.ServiceId = item.ServiceId;
                        tsp.ServiceName = item.ServiceName;
                        tsp.ServiceType = item.ServiceType;
                        listTransfer.Add(tsp);
                    }

                    if (listTransfer.Count > 0)
                    {
                        string json = JsonConvert.SerializeObject(listTransfer);
                        if (json != string.Empty)
                        {
                            return new string[] { json.Replace(@"\", "") };
                        }
                        else
                        {
                            return new string[] { "" };
                        }
                    }
                    else
                    {
                        return new string[] { "" };
                    }
                }
                else
                {
                    return new string[] { "" };
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return new string[] { "" };
            }
        }

        // GET: api/Agent/GetServices
        [Authentication.BasicAuthentication]
        [HttpGet]
        public IEnumerable<string> GetServices([FromUri]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    string json = string.Empty;
                    if (mpApp.NotReadyReasons != null)
                    {
                        List<DialServiceParameters> list = new List<DialServiceParameters>();
                        foreach (CNotReadyReason item in mpApp.NotReadyReasons)
                        {
                            DialServiceParameters dsp = new DialServiceParameters();
                            dsp.ReasonId = item.Id.ToString();
                            dsp.ReasonName = item.Description;
                            list.Add(dsp);
                        }
                        if (list.Count > 0)
                        {
                            json = JsonConvert.SerializeObject(list);
                        }
                        else
                        {
                            json = string.Empty;
                        }

                        return new string[] { json.Replace(@"\", "") };
                    }
                    else
                    {
                        return new string[] { "" };
                    }
                }
                else
                {
                    return new string[] { "" };
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return new string[] { "" };
            }
        }

        // GET: api/Agent/GetServicesAgent
        [Authentication.BasicAuthentication]
        [HttpGet]
        public IEnumerable<string> GetServicesAgent([FromUri]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    string json = string.Empty;
                    if (mpApp.AssignedServices != null)
                    {
                        List<DialServiceParameters> list = new List<DialServiceParameters>();
                        foreach (CService item in mpApp.AssignedServices)
                        {
                            DialServiceParameters dsp = new DialServiceParameters();
                            dsp.ServiceId = item.ServiceId.ToString();
                            dsp.ServiceName = item.ServiceName;
                            list.Add(dsp);
                        }
                        if (list.Count > 0)
                        {
                            json = JsonConvert.SerializeObject(list);
                        }
                        else
                        {
                            json = string.Empty;
                        }

                        return new string[] { json.Replace(@"\", "") };
                    }
                    else
                    {
                        return new string[] { "" };
                    }
                }
                else
                {
                    return new string[] { "" };
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return new string[] { "" };
            }
        }

        // GET: api/Agent/GetDisposition
        [Authentication.BasicAuthentication]
        [HttpGet]
        public IEnumerable<string> GetDisposition([FromUri]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    string json = string.Empty;
                    CDispositions dispositions = mpApp.CurrentService.DispositionPlan.Dispositions;
                    if (dispositions != null)
                    {
                        List<CallDispositionParameters> list = new List<CallDispositionParameters>();
                        foreach (CDisposition item in dispositions)
                        {
                            CallDispositionParameters cdp = new CallDispositionParameters();
                            cdp.Id = item.Id;
                            cdp.Code = item.Code;
                            cdp.Description = item.Description;
                            list.Add(cdp);
                        }
                        if (list.Count > 0)
                        {
                            json = JsonConvert.SerializeObject(list);
                        }
                        else
                        {
                            json = string.Empty;
                        }

                        return new string[] { json.Replace(@"\", "") };
                    }
                    else
                    {
                        return new string[] { "" };
                    }
                }
                else
                {
                    return new string[] { "" };
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return new string[] { "" };
            }
        }

        #endregion

        #region Post Methods

        // POST: api/Agent/LoginPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage LoginPost([FromBody]UserParameters user)
        {
            try
            {
                myApp.Login(user.UserId, user.Password, user.Station, user.Portal);
                UserParameters u = new UserParameters();
                u.AgentId = myApp.CurrentAgent.AgentId;
                string json = JsonConvert.SerializeObject(u);
                return Request.CreateResponse(HttpStatusCode.OK, json.Replace(@"\", ""));
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                if (ex.Message.Equals("Generic Exception", StringComparison.OrdinalIgnoreCase))
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Usuário ou senha invalidos!");
                }
                else if (ex.Message.Equals("8", StringComparison.OrdinalIgnoreCase))
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Senha invalida!");
                }
                else if (ex.Message.Equals("0", StringComparison.OrdinalIgnoreCase))
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Tempo limite de login excedido!");
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
                }
            }
        }

        // POST: tion.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage TakeCallsPost([FromBody]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    var mpApp = MainObject.MainList[user.AgentId];
                    if (mpApp.CurrentState is CStateAuthenticated)
                    {
                        mpApp.TakeCalls();
                        mpApp.EnableKeepAlives = true;
                        string json = string.Empty;
                        if (mpApp.CurrentCall == null)
                        {
                            List<DialServiceParameters> list = new List<DialServiceParameters>();
                            foreach (CService item in mpApp.AssignedServices)
                            {
                                DialServiceParameters dsp = new DialServiceParameters();
                                dsp.ServiceId = item.ServiceId.ToString();
                                dsp.ServiceName = item.serviceName;
                                list.Add(dsp);
                            }
                            if (list.Count > 0)
                            {
                                json = JsonConvert.SerializeObject(list);
                            }
                        }
                        return Request.CreateResponse(HttpStatusCode.OK, json.Replace(@"\", ""));
                    }
                    else
                    {
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, "Agent not authenticate");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent not found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/DialPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage DialPost([FromBody]AgentParameters agent)
        {
            try
            {
                int iServiceId = 0;
                int iExternalRouteId = 0;
                HttpResponseMessage response = null;
                CApp mpApp;

                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    mpApp = MainObject.MainList[agent.User.AgentId];

                    if (agent.Dial.PhoneNumber.Trim() != "")
                    {
                        if (mpApp.CurrentCall == null)
                        {
                            if ((mpApp.CurrentAgent.ShowServiceListForManualDial || mpApp.CurrentAgent.RequireServiceForManualDial) && mpApp.AssignedServices.Count > 1)
                            {
                                iServiceId = agent.Dial.ServiceId;
                            }
                        }
                        else
                        {
                            iServiceId = mpApp.CurrentCall.ServiceID;
                        }

                        try
                        {
                            int result = mpApp.Dial(agent.Dial.PhoneNumber, iServiceId, iExternalRouteId, mpApp);
                            if (result > 0)
                            {
                                response = Request.CreateResponse(HttpStatusCode.OK, "OK");
                                return response;
                            }
                            else
                            {
                                Log.logMessage("RESPONSE (ACTION DIAL): PhoneNumber is Empty!");
                                return Request.CreateResponse(HttpStatusCode.NotFound, "PhoneNumber is Empty");
                            }
                        }
                        catch (Exception ex)
                        {
                            Log.logException(ex);
                            return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
                        }
                    }
                    else
                    {
                        string message = "Not Authentiate or PhoneNumber is Empty!";
                        Log.logMessage("RESPONSE (ACTION DIAL): " + message);
                        return Request.CreateResponse(HttpStatusCode.NotFound, message);
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found!");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/HangupPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage HangupPost([FromBody]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    mpApp.Hangup(mpApp.CurrentCall, mpApp);
                    return Request.CreateResponse(HttpStatusCode.OK, "OK");
                }
                else
                {
                    Log.logMessage("RESPONSE (ACTION HANGUP): " + "Agent Not Found");
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/HoldPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage HoldPost([FromBody]AgentParameters agent)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[agent.User.AgentId];

                    if (agent.Dial.HoldState == true)
                    {
                        if (mpApp.ReleaseHold(agent.Dial, mpApp))
                        {
                            return Request.CreateResponse(HttpStatusCode.OK, "OK");
                        }
                        else
                        {
                            return Request.CreateResponse(HttpStatusCode.BadRequest, "Current Call Not Found!");
                        }
                    }
                    else
                    {
                        if (mpApp.Hold(agent.Dial, mpApp))
                        {
                            return Request.CreateResponse(HttpStatusCode.OK, "OK");
                        }
                        else
                        {
                            return Request.CreateResponse(HttpStatusCode.BadRequest, "Current Call Not Found!");
                        }
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Agent Not Found!");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/NextCallPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage NextCallPost([FromBody]AgentParameters agent)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[agent.User.AgentId];

                    if (mpApp.CurrentService.RequireDisposition)
                    {
                        //TODO: If not allowed to schedule a callback, remove callback dispositions from selection list
                        //TODO: If not allowed to set an exclusion, remove exclusion dispositions from selection list

                        if (agent.DispositionClass != null)
                        {

                            CDisposition pDisp = new CDisposition(agent.DispositionClass.Id, agent.DispositionClass.Description,
                                agent.DispositionClass.Code, false, false, false);

                            //TODO: If selected disposition is a callback then have user request a callback
                            //TODO: If selected disposition is an exclusion then have user request an exclusion

                            try
                            {
                                mpApp.DisposeCall(mpApp.CurrentCall, pDisp);
                                return Request.CreateResponse(HttpStatusCode.OK, "OK");
                            }
                            catch (Exception ex)
                            {
                                Log.logException(ex);
                                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
                            }
                        }
                        else
                        {
                            try
                            {
                                mpApp.DisposeCall(mpApp.CurrentCall, null);
                                return Request.CreateResponse(HttpStatusCode.OK, "OK");
                            }
                            catch (Exception ex)
                            {
                                Log.logException(ex);
                                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
                            }
                        }
                    }
                    else
                    {
                        return Request.CreateResponse(HttpStatusCode.NotAcceptable, "Not Require Disposition");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/LogoutPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage LogoutPost([FromBody]AgentParameters agent)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[agent.User.AgentId];
                    var response = mpApp.Logout(agent.Logout, mpApp);
                    if (response == HttpStatusCode.OK)
                    {
                        //MainObject.MainList.Remove(mpApp.CurrentAgent.AgentId);
                        MainObject.MainEventList.Remove(agent.User.AgentId);
                        MainObject.MainList.Remove(agent.User.AgentId);
                        return Request.CreateResponse(HttpStatusCode.OK, "OK");
                    }
                    else
                    {
                        return Request.CreateResponse(response, "Error logout");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/UnavailablePost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage UnavailablePost([FromBody]AgentParameters agent)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[agent.User.AgentId];
                    CNotReadyReason reason = new CNotReadyReason(agent.Unavailable.Id, agent.Unavailable.Description);
                    bool park = agent.Unavailable.Park;

                    mpApp.BecomeUnavailable(reason, park);
                    return Request.CreateResponse(HttpStatusCode.OK, "Unavailable (OK)");
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/AvailablePost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage AvailablePost([FromBody]UserParameters user)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    CApp mpApp = MainObject.MainList[user.AgentId];

                    mpApp.BecomeAvailable();
                    return Request.CreateResponse(HttpStatusCode.OK, "Available (OK)");
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Agent Not Found");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        // POST: api/Agent/TransferPost
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage TransferPost([FromBody] AgentParameters agent)
        {
            try
            {
                if (MainObject.MainList.FirstOrDefault(x => x.Key == agent.User.AgentId).Key != string.Empty)
                {
                    object obj = new CSimpleService(agent.Transfer.ServiceId, agent.Transfer.ServiceName, agent.Transfer.ServiceType);
                    CApp mpApp = MainObject.MainList[agent.User.AgentId];
                    //If Consulting or Conferenced, transfer the call to the consulted party
                    if (mpApp.CurrentState is CStateConsulting || mpApp.CurrentState is CStateConference)
                    {
                        mpApp.Transfer();
                        return Request.CreateResponse(HttpStatusCode.OK, "OK");
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(agent.Transfer.PhoneNumber))
                        {
                            if (obj is CExternalRoute)
                            {
                                mpApp.Transfer(agent.Transfer.PhoneNumber, (CExternalRoute)obj);
                                return Request.CreateResponse(HttpStatusCode.OK, "OK (External Route)");
                            }
                            else
                            {
                                mpApp.Transfer(agent.Transfer.PhoneNumber);
                                return Request.CreateResponse(HttpStatusCode.OK, "OK (PhoneNumber)");
                            }
                        }
                        else if (obj is CUser)
                        {
                            mpApp.Transfer((CUser)obj);
                            return Request.CreateResponse(HttpStatusCode.OK, "OK (User)");
                        }
                        else if (obj is CSimpleService)
                        {
                            mpApp.Transfer((CSimpleService)obj);
                            return Request.CreateResponse(HttpStatusCode.OK, "OK (Simple Service)");
                        }
                        return Request.CreateResponse(HttpStatusCode.BadRequest, "");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message + "PhoneNumber: " + agent.Transfer.PhoneNumber);
            }
        }

        // POST: api/Agent/VerifyUpdates
        [Authentication.BasicAuthentication]
        [HttpPost]
        public HttpResponseMessage VerifyUpdates([FromBody] UserParameters user)
        {
            try
            {
                if (MainObject.MainEventList.FirstOrDefault(x => x.Key == user.AgentId).Key != string.Empty)
                {
                    var obj = MainObject.MainEventList[user.AgentId];
                    if (obj != null)
                    {
                        string json = JsonConvert.SerializeObject(obj);
                        var response = Request.CreateResponse(HttpStatusCode.OK, json);
                        return response;
                    }
                    else
                    {
                        return Request.CreateResponse(HttpStatusCode.Accepted, "");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.Accepted, "");
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
                return Request.CreateResponse(HttpStatusCode.Accepted, ex.Message);
            }
        }

        #endregion

        #region PUT/DELETE

        // PUT: api/Login/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Login/5
        public void Delete(int id)
        {
        }

        #endregion

        #region Utils

        private void UpdateDictionary(string key, CApp value)
        {
            MainObject.MainList.Remove(key);
            if (string.IsNullOrEmpty(MainObject.MainList.FirstOrDefault(x => x.Key == key).Key))
            {
                MainObject.MainList.Add(value.CurrentAgent.AgentId, value);
            }
        }

        #endregion
    }
}