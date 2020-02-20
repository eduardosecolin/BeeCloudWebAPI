using System;
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
using System.Web.Http.Description;

namespace SalesForceTestRequest.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class AgentController : ApiController
    {

        private CApp myApp;
        private Timer mpAnswerCallTimer;
        private Timer mpUnloadTimer;
        private int miAnswerCallTickCount;

        public AgentController()
        {
            myApp = new CApp();
            myApp.Screenpop += MyApp_Screenpop;
            myApp.StateChange += CApp_StateChange;
        }

        #region Received Call Methods

        [ApiExplorerSettings(IgnoreApi = true)]
        private void ResetAnswerCallPanel()
        {
            if (mpAnswerCallTimer != null)
            {
                mpAnswerCallTimer.Dispose();
            }
            mpAnswerCallTimer = null;
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public void mpUnloadTimer_Fire(Object state)
        {
            mpUnloadTimer.Dispose();
            mpUnloadTimer = null;
            return;
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public void mpAnswerCallTimer_Fire(Object state)
        {

            miAnswerCallTickCount--;

            if (miAnswerCallTickCount < 0)
            {
                ResetAnswerCallPanel();
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
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
                        MainObject.MainList[obj.CurrentAgent.AgentId].DateState = DateTime.Now;
                        break;
                    case AgentStateId.asPREVIEW:
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.CallId = obj.CurrentCall.CallID;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.Name = obj.CurrentCall.FirstName;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.ShowScreenPop = false;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].Call.PhoneNumber = obj.CurrentCall.PhoneNumber;
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        MainObject.MainList[obj.CurrentAgent.AgentId].DateState = DateTime.Now;
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
                        MainObject.MainList[obj.CurrentAgent.AgentId].DateState = DateTime.Now;
                        MainObject.MainList[obj.CurrentAgent.AgentId].Date_Last_Login = DateTime.Now;
                        break;
                    case AgentStateId.asLOGGING_IN:
                    case AgentStateId.asIDLE:
                    case AgentStateId.asDIALING:
                    case AgentStateId.asDIALING_CONSULTATION:
                    case AgentStateId.asRINGING:
                    case AgentStateId.asWRAP:
                    case AgentStateId.asHELD:
                    case AgentStateId.asWAITING:
                    case AgentStateId.asLOGGED_OUT:
                    case AgentStateId.asACTIVE_INTERNAL:
                    case AgentStateId.asNOT_READY:
                    case AgentStateId.asPARKED:
                    case AgentStateId.asCONSULTING:
                    case AgentStateId.asCONFERENCE:
                    case AgentStateId.asCHATTING:
                    case AgentStateId.asINACTIVE:
                        MainObject.MainEventList[obj.CurrentAgent.AgentId].StateAgentId = (StateAgentId)pArgs.NewState.Id;
                        MainObject.MainList[obj.CurrentAgent.AgentId].DateState = DateTime.Now;
                        break;
                }
            }
            catch (Exception ex)
            {
                Log.logException(ex);
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
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
        /// <summary>
        /// Retorna um array de valores
        /// </summary>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Agent/Get/5
        /// <summary>
        /// Retorna um valor no formato string por Id
        /// </summary>
        public string Get(int id)
        {
            return "value";
        }

        // GET: api/Agent/GetInfoAgent
        /// <summary>
        /// Retorna os agentes logados
        /// </summary>
        [HttpGet]
        [Authentication.BasicAuthentication]
        [ApiExplorerSettings(IgnoreApi = true)]
        public HttpResponseMessage GetInfoAgent()
        {
            try
            {
                if(MainObject.MainList.Count > 0)
                {
                    AgentManager agentManager = new AgentManager();
                    foreach (var item in MainObject.MainList)
                    {
                        InfoAgent infoAgent = new InfoAgent();
                        infoAgent.NameAgent = item.Key;
                        infoAgent.CurrentState = (int)item.Value.CurrentState.Id;
                        infoAgent.DateState = item.Value.DateState;
                        infoAgent.DateLastLogin = item.Value.Date_Last_Login;
                        agentManager.InfoAgents.Add(infoAgent);
                    }

                    string json = JsonConvert.SerializeObject(agentManager);
                    if (!string.IsNullOrEmpty(json))
                    {
                        return Request.CreateResponse(HttpStatusCode.OK, agentManager);
                    }
                    else
                    {
                        return Request.CreateResponse(HttpStatusCode.NoContent, "");
                    }
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NoContent, "");
                }
            }
            catch (Exception ex)
            {

                return Request.CreateResponse(HttpStatusCode.NoContent, ex.Message);
            }
        }

        // GET: api/Agent/GetServicesTransfer
        /// <summary>
        /// Retorna os serviços de transferencia
        /// </summary>
        [HttpGet]
        [Authentication.BasicAuthentication]
        [ApiExplorerSettings(IgnoreApi = true)]
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
        /// <summary>
        /// Retorna os serviços de pausa
        /// </summary>
        [HttpGet]
        [Authentication.BasicAuthentication]
        [ApiExplorerSettings(IgnoreApi = true)]
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
        /// <summary>
        /// Retorna os serviços do agente
        /// </summary>
        [HttpGet]
        [Authentication.BasicAuthentication]
        [ApiExplorerSettings(IgnoreApi = true)]
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
        /// <summary>
        /// Retorna as disposições do agente
        /// </summary>
        [HttpGet]
        [Authentication.BasicAuthentication]
        [ApiExplorerSettings(IgnoreApi = true)]
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
        /// <summary>
        /// Requisição de login do agente
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
        public HttpResponseMessage LoginPost([FromBody]UserParameters user)
        {
            try
            {
                myApp.Login(user.UserId, user.Password, user.Station, user.Portal);
                UserParameters userParameter = new UserParameters();
                userParameter.AgentId = myApp.CurrentAgent.AgentId;
                string json = JsonConvert.SerializeObject(userParameter);
                Log.logMessage($"USER LOGIN -> Agent: { userParameter.AgentId } Date login: { DateTime.Now }");
                return Request.CreateResponse(HttpStatusCode.OK, userParameter);
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

        // POST: api/Agent/TakeCallsPost
        /// <summary>
        /// Requisição de autenticação do agente
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
                        List<DialServiceParameters> list = new List<DialServiceParameters>();
                        if (mpApp.CurrentCall == null)
                        {
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
                        return Request.CreateResponse(HttpStatusCode.OK, list);
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
        /// <summary>
        /// Requisição de chamada manual
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição de finalização de chamada
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição de espera de chamada
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição de tabulação
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
                            CDisposition pDisp;
                            if (mpApp.CurrentCall != null && mpApp.CurrentCall.CurrentState is CStatePreview)
                            {
                                pDisp = new CDisposition(agent.DispositionClass.Id, agent.DispositionClass.Description,
                               agent.DispositionClass.Code, true, false, false);
                            }
                            else
                            {
                                pDisp = new CDisposition(agent.DispositionClass.Id, agent.DispositionClass.Description,
                                   agent.DispositionClass.Code, false, false, false);
                            }

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
        /// <summary>
        /// Requisição de logout do agente
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
                        MainObject.MainEventList.Remove(agent.User.AgentId);
                        //MainObject.MainList.Remove(agent.User.AgentId);
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
        /// <summary>
        /// Requisição para entrar em pausa
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição pra sair da pausa
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição de transferência de chamada
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
        /// <summary>
        /// Requisição para verificação de atualização de status
        /// </summary>
        [HttpPost]
        [Authentication.BasicAuthentication]
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
                        var response = Request.CreateResponse(HttpStatusCode.OK, obj);
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
                Log.logException(ex, user.AgentId);
                return Request.CreateResponse(HttpStatusCode.Accepted, ex.Message);
            }
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
