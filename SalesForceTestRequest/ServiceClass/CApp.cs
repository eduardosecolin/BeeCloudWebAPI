using Newtonsoft.Json;
using SalesForceTestRequest.EPAgentWS;
using SalesForceTestRequest.Models;
using SalesForceTestRequest.Utils;
using System;
using System.Net;
using System.Threading;

// ReSharper disable NotAccessedField.Local
// ReSharper disable CanBeReplacedWithTryCastAndCheckForNull
// ReSharper disable SuggestUseVarKeywordEvident
// ReSharper disable InconsistentNaming
namespace SalesForceTestRequest.ServiceClass
{
    /// <summary>
    /// Summary description for CApp.
    /// </summary>
    public enum AgentType
    {
        atNarrowBand = 1,
        atInternet = 3
    };

    public enum DialType
    {
        dtInternal = 1,
        dtExternal = 2,
        dtService = 3,
        dtPreview = 3
    };

    internal enum ConsultType
    {
        ctInternal = 1,
        ctExternal = 2,
        ctXferChatToAgent = 3,
        ctXferAGDToAgent = 4
    };

    internal enum TransferType
    {
        ttWarm = 1,
        ttBlind = 2
    };

    public enum ChatEntityType
    {
        ceAgent = 1,
        ceMonitoringSupervisor = 2,
        ceCustomer = 3
    };

    public class CAgent : CServiceManual
    {
        #region Attributes

        public String LDAPUserId { get { return ldapUserId; } }
        internal String ldapUserId
        {
            get { return mpAgentArg.LDAPUserId; }
            set { mpAgentArg.LDAPUserId = value; }
        }

        public int ClientRole { get { return clientRole; } }
        internal int clientRole
        {
            get { return mpAgentArg.clientRole; }
            set { mpAgentArg.clientRole = value; }
        }

        public int ServerType { get { return serverType; } }
        internal int serverType
        {
            get { return mpAgentArg.serverType; }
            set
            {
                mpAgentArg.serverType = value;
                mpAgentInfoArg.serverType = value;
            }
        }

        public String LoginName { get { return loginName; } }
        internal String loginName
        {
            get { return mpAgentArg.agentLoginName; }
            set
            {
                mpAgentArg.agentLoginName = value;
                mpAgentInfoArg.agentLoginName = value;
            }
        }

        public String Password { get { return password; } }
        internal String password
        {
            get { return mpAgentInfoArg.password; }
            set { mpAgentInfoArg.password = value; }
        }

        public String Station { get { return station; } }
        internal String station
        {
            get { return mpAgentInfoArg.stationId; }
            set { mpAgentInfoArg.stationId = value; }
        }

        public int AgentType { get { return agentType; } }
        internal int agentType
        {
            get { return mpAgentInfoArg.agentType; }
            set { mpAgentInfoArg.agentType = value; }
        }

        public int WorkgroupId { get { return workgroupId; } }
        internal int workgroupId
        {
            get { return mpAgentInfoArg.agentWorkgroupID; }
            set { mpAgentInfoArg.agentWorkgroupID = value; }
        }

        public int ReferenceId { get { return referenceId; } }
        internal int referenceId
        {
            get { return mpAgentInfoArg.referenceID; }
            set { mpAgentInfoArg.referenceID = value; }
        }

        public int AgentIndex { get { return agentIndex; } }
        internal int agentIndex
        {
            get { return mpAgentInfoArg.agentIndex; }
            set { mpAgentInfoArg.agentIndex = value; }
        }

        public int GatewayId { get { return gatewayId; } }
        internal int gatewayId
        {
            get { return mpAgentInfoArg.ntSwitchID; }
            set { mpAgentInfoArg.ntSwitchID = value; }
        }

        public int Site { get { return site; } }
        internal int site = 0;

        public String AWSVersion { get { return awsVersion; } }
        internal String awsVersion = null;

        public String Tenant { get { return tenant; } }
        internal String tenant = null;

        public bool AllowPark { get { return allowPark; } }
        internal bool allowPark;

        public int ParkAlarmSecs { get { return parkAlarmSecs; } }
        internal int parkAlarmSecs;

        public int RouteAccessId { get { return routeAccessId; } }
        internal int routeAccessId;

        public String FirstName { get { return firstName; } }
        internal String firstName;

        public String LastName { get { return lastName; } }
        internal String lastName;

        public String AgentId { get { return mpAgentArg.agentLoginName; } }

        internal UDAgent AgentArg { get { return mpAgentArg; } }
        internal UDAgentInfo AgentInfoArg { get { return mpAgentInfoArg; } }

        private readonly UDAgentInfo mpAgentInfoArg;
        private readonly UDAgent mpAgentArg;

        #endregion

        internal CAgent()
        {
            mpAgentArg = new UDAgent();
            mpAgentInfoArg = new UDAgentInfo();
        }
    }

    [JsonObject(IsReference = true)]
    public class CApp
    {
        #region Attributes

        public DateTime Date_Last_Login { get; set; }
        public DateTime DateState { get; set; }

        public event StateChangeHandler StateChange;
        public event UnfocusedStateChangeHandler UnfocusedStateChange;

        public event CallStateChangeHandler CallStateChange;
        public event UnfocusedCallStateChangeHandler UnfocusedCallStateChange;

        public event PasscodeHandler Passcode;
        public event LogoutPendingHandler LogoutPending;
        public event ScreenpopHandler Screenpop;

        public event CallActivatedHandler CallActivated;
        public event PhoneStatusHandler PhoneStatus;
        public event ErrorHandler Error;
        public event LoggedInHandler LoggedIn;

        public event ChatEntityHandler ChatEntityAdded;
        public event ChatEntityHandler ChatEntityRemoved;
        public event ChatURLHandler ChatURL;
        public event ChatMessageHandler ChatMessage;

        public CState CurrentState { get { return mpEventManager.CurrentState; } }
        public CAgent CurrentAgent { get { return mpCurrentAgent; } }
        public CCall CurrentCall { get { return mpCallManager.CurrentCall; } }
        public CLogoutReasons LogoutReasons { get { return mpLogoutReasons; } }
        public CNotReadyReasons NotReadyReasons { get { return mpNotReadyReasons; } }
        public CCallRejectionReasons CallRejectionReasons { get { return mpCallRejectionReasons; } }
        public CExternalRoutes ExternalRoutes { get { return mpExternalRoutes; } }
        public CAssignedServices AssignedServices { get { return mpAssignedServices; } }
        public CService CurrentService { get { return (this.CurrentCall == null ? mpCurrentAgent : mpAssignedServices.GetByKey(CurrentCall.serviceID)); } }
        internal CDispositionPlans DispositionPlans { get { return mpDispositionPlans; } }
        internal CPortal Portal { get { return mpPortal; } }
        internal CEventManager EventManager { get { return mpEventManager; } }
        internal CCallManager CallManager { get { return mpCallManager; } }
        internal C3WayCallManager ThreeWayCallManager { get { return mpThreeWayCallManager; } }

        private readonly CEventManager mpEventManager;
        private readonly CPortal mpPortal;
        private CAgent mpCurrentAgent;
        private readonly CCallManager mpCallManager;
        private Timer mpKeepAliveTimer;
        private readonly CLogoutReasons mpLogoutReasons;
        private readonly CNotReadyReasons mpNotReadyReasons;
        private readonly CCallRejectionReasons mpCallRejectionReasons;
        private readonly CAssignedServices mpAssignedServices;
        private readonly CDispositionPlans mpDispositionPlans;
        private readonly CExternalRoutes mpExternalRoutes;
        private readonly C3WayCallManager mpThreeWayCallManager;

        #endregion

        #region Constructor

        public CApp()
        {
            mpPortal = new CPortal();
            mpEventManager = new CEventManager(this);
            mpCallManager = new CCallManager();
            mpAssignedServices = new CAssignedServices(this);
            mpLogoutReasons = new CLogoutReasons(this);
            mpNotReadyReasons = new CNotReadyReasons(this);
            mpCallRejectionReasons = new CCallRejectionReasons(this);
            mpDispositionPlans = new CDispositionPlans(this);
            mpExternalRoutes = new CExternalRoutes(this);
            mpThreeWayCallManager = new C3WayCallManager();
        }

        #endregion

        #region Methods

        private String GetServiceUrl(String sDefaultUrl, String sPortal)
        {
            if (string.IsNullOrEmpty(sDefaultUrl))
            {
                return sDefaultUrl;
            }

            int iStart = sDefaultUrl.IndexOf("//", 0, StringComparison.Ordinal);
            int iEnd = -1;
            if (iStart > -1)
            {
                iEnd = sDefaultUrl.IndexOf("/", iStart + 2, StringComparison.Ordinal);
            }

            if (iStart > -1 && iEnd > -1)
            {
                return sDefaultUrl.Substring(0, iStart + 2) + sPortal + sDefaultUrl.Substring(iEnd);
            }
            return sDefaultUrl;
        }

        public void Login(String sUser, String sPwd, String sStation, String sPortal)
        {
            String sAgentUrl = GetServiceUrl(mpPortal.WSAgent.Url, sPortal);
            String sEventsUrl = GetServiceUrl(mpPortal.WSEvents.Url, sPortal);


            //Dynamically point each proxy to the portal specified by the user
            mpPortal.WSAgent.Url = sAgentUrl;
            mpPortal.WSEvents.Url = sEventsUrl;

            //Check agent's existence
            CAgent pAgent = new CAgent { ldapUserId = sUser };

            UDInfo pInfo = new UDInfo { listType = (int)AgentInfoType.GET_LOGIN_USER };

            User pUser = (User)mpPortal.WSAgent.getInfo(pAgent.AgentArg, pInfo);

            if (pUser == null)
            {
                throw new Exception("Usuário '" + sUser + "' não encontrado!");
            }

            //Authenticate agent
            pAgent.clientRole = pUser.usertypemask;
            pAgent.serverType = 1;
            pAgent.loginName = pUser.userid;

            pAgent.password = sPwd;

            try
            {
                mpPortal.WSAgent.authenticate(pAgent.AgentArg, pAgent.AgentInfoArg);
            }
            catch (Exception pError)
            {
                Log.logException(pError);
                throw pError;
            }

            //Set agent's additional properties
            pAgent.station = sStation;
            pAgent.agentType = (int)AgentType.atNarrowBand;
            pAgent.workgroupId = pUser.workgroupid;
            pAgent.routeAccessId = pUser.routeaccessid;
            pAgent.allowPark = Convert.ToBoolean(pUser.park);
            pAgent.parkAlarmSecs = pUser.parkdelay;
            pAgent.firstName = pUser.userfname;
            pAgent.lastName = pUser.userlname;

            //Set agent's general service properties (Agent's service properties are used for validation when there's no current service (eg, in Idle))
            pAgent.serviceId = 0;
            pAgent.serviceType = ServiceType.MANUAL;
            pAgent.serviceName = "Default";
            pAgent.dispositionPlan = null;
            pAgent.dialMask = pUser.outgoingmask;

            mpCurrentAgent = pAgent;

            //Load agent's service settings and add agent to list of assigned services.
            mpAssignedServices.Load(mpCurrentAgent);

            //Load logout reasons
            mpLogoutReasons.Load();

            //Load not ready reasons
            mpNotReadyReasons.Load();

            //Load call rejections reasons
            mpCallRejectionReasons.Load();

            //Load external routes
            mpExternalRoutes.Load();

            mpEventManager.RaiseEvent(AgentEventType.aeAUTHENTICATED, null, false);
        }

        public HttpStatusCode Logout(LogoutParameters param, CApp myApp)
        {
            try
            {
                int temp = mpCurrentAgent.AgentIndex;
                if (param == null)
                {
                    return HttpStatusCode.NotFound;
                }

                UDReason oReason = new UDReason { reasonId = param.Index };
                mpPortal.WSAgent.requestLogout(mpCurrentAgent.AgentArg, oReason);

                if (param.Index == CLogoutReason.PANIC_LOGOUT_ID)
                {
                    mpEventManager.RaiseEvent(AgentEventType.aeLOGOUT, null);
                }

                myApp.EnableKeepAlives = false;
                return HttpStatusCode.OK;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Hangup(CCall pCall, CApp myApp)
        {
            try
            {
                if (pCall == null)
                {
                    throw new Exception("A instancia da chamada é nula");
                }

                if (pCall.FirstPartyCall.CurrentState != null)
                {
                    //if (!pCall.FirstPartyCall.CurrentState.EnableHangup)
                    //{
                    //    //throw new Exception("O estado da chamada corrente não esta ativo!");
                    //}
                }

                UDParm pParam = new UDParm { callId = pCall.CallID };
                mpPortal.WSAgent.hangup(myApp.mpCurrentAgent.AgentArg, pParam);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void HangupConsultation()
        {
            if (this.CurrentCall == null)
            {
                throw new InvalidOperationException("Invalid request - HangupConsultation. There is no current call.");
            }

            if (!(this.CurrentCall is CCallVoice))
            {
                throw new InvalidOperationException("Invalid request - HangupConsultation. The current call does not support consultations.");
            }

            CCallVoice pCall = (CCallVoice)this.CurrentCall;

            if (pCall.thirdPartyCall.CallID == 0)
            {
                throw new InvalidOperationException("Invalid request - HangupConsultation. There is no current consultation call.");
            }

            if (!pCall.thirdPartyCall.CurrentState.EnableHangup)
            {
                throw new InvalidOperationException("Invalid request - HangupConsultation. Request not allowed in current state of consultation call.");
            }

            UDParm pParam = new UDParm { callId = pCall.thirdPartyCall.CallID };
            mpPortal.WSAgent.hangup(mpCurrentAgent.AgentArg, pParam);
        }

        public void DisposeCall(CCall pCall, CDisposition pDisposition)
        {
            try
            {
                if (pCall == null)
                {
                    throw new InvalidOperationException("Invalid request - DisposeCall. You must specify the call to dispose.");
                }

                CService pCurrentService = mpAssignedServices.GetByKey(pCall.serviceID);

                //If disposition required then validate argument
                if (pCurrentService.RequireDisposition && pCurrentService.DispositionPlan != null && pCurrentService.DispositionPlan.Dispositions.Count > 0)
                {
                    //Check that a disposition was specified
                    if (pDisposition == null)
                    {
                        throw new ArgumentNullException("pDisposition", "You must specify a disposition to dispose the current call.");
                    }

                    //Check that specified disposition is in list
                    if (!pCurrentService.DispositionPlan.Dispositions.Contains(pDisposition.Id))
                    {
                        throw new ArgumentException("Invalid Disposition. You must specify a disposition from the disposition plan of the current call's service.");
                    }

                    //If disposition is callback check that callback was requested
                    if (pDisposition.IsCallback & !pCall.CallbackRequested)
                    {
                        throw new ArgumentException("Invalid Disposition. You must request a callback before disposing the current call with a callback disposition.");
                    }

                    //If disposition is exclusion check that exclusion was requested
                    if (pDisposition.IsExclusion && !pCall.ExclusionRequested)
                    {
                        throw new ArgumentException("Invalid Disposition. You must request an exclusion before disposing the current call with an exclusion disposition.");
                    }
                }
                //If disposition not required, use the default one
                else
                {
                    pDisposition = new CDisposition(64, "[Default]", "", false, false, false);
                }

                //Copy call's user defined fields
                UDCallInfoUserDefinedItemIn[] items = new UDCallInfoUserDefinedItemIn[20];
                for (int i = 0; i < items.Length; i++)
                {
                    items[i] = new UDCallInfoUserDefinedItemIn
                    {
                        key = pCall.userDefinedItems[i].key,
                        value = pCall.userDefinedItems[i].value
                    };
                }

                //Dispose the call with its user defined fields and the
                //specified disposition
                UDDisposition pDisp = new UDDisposition
                {
                    callId = pCall.CallID,
                    IDisposition = pDisposition.Id,
                    saleFlag = pDisposition.IsSale,
                    callBackFlag = pCall.CallbackRequested,
                    updatedCallInfoUserDefined = new UDCallInfoUserDefinedIn { userDefinedItems = items }
                };

                mpPortal.WSAgent.callOutcome(mpCurrentAgent.AgentArg, pDisp);

                //If call was successfully disposed then remove it from list
                mpCallManager.RemoveByKey(pCall.CallID);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void ActivateCall(CCall pCall)
        {
            mpEventManager.ActivateCall(pCall);
        }

        public void TakeCalls()
        {
            try
            {
                UDProperty[] properties = new UDProperty[2];
                properties[0] = new UDProperty { name = "MutliLine", value = "false" };
                properties[1] = new UDProperty { name = "UserLocale", value = "en-us" };
                mpPortal.RegisterEx(mpCurrentAgent.AgentArg, mpCurrentAgent.AgentInfoArg, properties);

            }
            catch (Exception ex)
            {
                Log.logException(ex);
                throw ex;
            }
        }

        public void Dial(String UserId)
        {
            if (UserId == null || UserId.Trim().Length == 0)
            {
                throw new ArgumentException("You must specify a UserId", "UserId");
            }

            //Create manual call and save it waiting for dialing event
            CCall pCall = new CCallVoice();
            mpCallManager.PendingManualCall = pCall;
            UDCall pCallParams = new UDCall { makeCallType = (int)DialType.dtInternal, userID = UserId };
            mpPortal.WSAgent.dial(mpCurrentAgent.AgentArg, pCallParams);
        }

        public int Dial(String PhoneNumber, int ServiceId, int ExternalRouteId, CApp myApp)
        {
            try
            {
                if (PhoneNumber == null || PhoneNumber.Trim().Length == 0)
                {
                    return 0;
                }

                CCall pCall;
                UDCall pCallParams = new UDCall();

                //If dialing a preview, retrieve preview call and update its phone number
                if (myApp.CurrentCall != null && myApp.CurrentCall.CurrentState is CStatePreview)
                {
                    pCall = this.CurrentCall;
                    pCall.phoneNumber = PhoneNumber;
                    pCallParams.makeCallType = (int)DialType.dtPreview;
                    pCallParams.callID = pCall.CallID;
                }
                //Otherwise, create manual call and save it waiting for dialing event
                else
                {
                    //Create manual call with number and service specified by user
                    pCall = new CCallVoice { serviceID = ServiceId, phoneNumber = PhoneNumber };
                    myApp.mpCallManager.PendingManualCall = pCall;
                    pCallParams.makeCallType = (int)DialType.dtExternal;
                }

                pCallParams.externalRouteID = ExternalRouteId;
                pCallParams.serviceID = pCall.ServiceID;
                pCallParams.phoneNumber = pCall.PhoneNumber;

                mpPortal.WSAgent.dial(myApp.mpCurrentAgent.AgentArg, pCallParams);

                return 1;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public bool Hold(DialParameters dial, CApp myApp)
        {
            try
            {

                //if (!(myApp.CurrentCall.FirstPartyCall.CurrentState is CStateActive))
                //{
                //    return false;
                //}

                UDParm oParam = new UDParm { callId = dial.CallID };
                myApp.mpPortal.WSAgent.hold(myApp.mpCurrentAgent.AgentArg, oParam);
                return true;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void HoldConsultation()
        {
            if (this.CurrentCall == null)
            {
                throw new InvalidOperationException("Invalid request - HoldConsultation. There is no current call.");
            }

            if (!(this.CurrentCall is CCallVoice))
            {
                throw new InvalidOperationException("Invalid request - HoldConsultation. The current call does not support consultations.");
            }

            CCallVoice pCall = (CCallVoice)this.CurrentCall;

            if (pCall.thirdPartyCall.CallID == 0)
            {
                throw new InvalidOperationException("Invalid request - HoldConsultation. There is no current consultation call.");
            }

            if (!(pCall.thirdPartyCall.CurrentState is CStateActive))
            {
                throw new InvalidOperationException("Invalid request - HoldConsultation. Request not allowed in current state of consultation call.");
            }

            UDParm pParam = new UDParm { callId = pCall.thirdPartyCall.CallID };
            mpPortal.WSAgent.hold(mpCurrentAgent.AgentArg, pParam);
        }

        public bool ReleaseHold(DialParameters dial, CApp myApp)
        {
            try
            {
                //if (!(myApp.CurrentCall.FirstPartyCall.CurrentState is CStateHeld))
                //{
                //    return false;
                //}

                int temp = myApp.CurrentCall == null ? 0 : myApp.CurrentCall.CallID;
                UDParm oParam = new UDParm { callId = dial.CallID };
                myApp.mpPortal.WSAgent.retrieveHold(myApp.mpCurrentAgent.AgentArg, oParam);
                return true;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void ReleaseHoldOnConsultation()
        {
            if (this.CurrentCall == null)
            {
                throw new InvalidOperationException("Invalid request - ReleaseHoldOnConsultation. There is no current call.");
            }

            if (!(this.CurrentCall is CCallVoice))
            {
                throw new InvalidOperationException("Invalid request - ReleaseHoldOnConsultation. The current call does not support consultations.");
            }

            CCallVoice pCall = (CCallVoice)this.CurrentCall;

            if (pCall.thirdPartyCall.CallID == 0)
            {
                throw new InvalidOperationException("Invalid request - ReleaseHoldOnConsultation. There is no current consultation call.");
            }

            if (!(pCall.thirdPartyCall.CurrentState is CStateHeld))
            {
                throw new InvalidOperationException("Invalid request - ReleaseHoldOnConsultation. Request not allowed in current state of consultation call.");
            }

            UDParm pParam = new UDParm { callId = pCall.thirdPartyCall.CallID };
            mpPortal.WSAgent.retrieveHold(mpCurrentAgent.AgentArg, pParam);
        }

        public void BecomeUnavailable(CNotReadyReason pNotReadyReason, bool Park)
        {
            try
            {
                if (pNotReadyReason == null)
                {
                    throw new ArgumentNullException("pNotReadyReason", "You must specify a NotReady Reason");
                }

                UDReason oReason = new UDReason { reasonId = pNotReadyReason.Id, toParkState = Park };
                mpPortal.WSAgent.requestUnavailable(mpCurrentAgent.AgentArg, oReason);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void BecomeAvailable()
        {
            try
            {
                mpPortal.WSAgent.available(mpCurrentAgent.AgentArg);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private void Consult(UDConsultIn consultParams)
        {
            try
            {
                CCall pCall = this.CurrentCall;

                //Copy call's user defined fields
                UDCallInfoUserDefinedItemIn[] items = new UDCallInfoUserDefinedItemIn[20];
                for (int i = 0; i < items.Length; i++)
                {
                    items[i] = new UDCallInfoUserDefinedItemIn
                    {
                        key = pCall.userDefinedItems[i].key,
                        value = pCall.userDefinedItems[i].value
                    };
                }

                consultParams.callID = pCall.CallID;
                consultParams.userDefinedData = new UDCallInfoUserDefinedIn { userDefinedItems = items };

                mpPortal.WSAgent.consult(mpCurrentAgent.AgentArg, consultParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Consult the specified user
        /// </summary>
        public void Consult(CUser user)
        {
            try
            {
                if (user == null)
                {
                    throw new ArgumentException("You must specify a user.", "user");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (!(this.CurrentCall is CCallVoice))
                {
                    throw new InvalidOperationException("Invalid request - Consult. The current call does not support consultations.");
                }

                if (!(this.CurrentCall.CurrentState.EnableConsult))
                {
                    throw new InvalidOperationException("Invalid request - Consult. Request not allowed in current state of current call.");
                }

                //Save the information about the consultation to the current 3rdParty call in case we need to refer to it later.
                CCallVoice pCall = (CCallVoice)this.CurrentCall;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationEntity = user;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationPhoneNumber = "";
                //Point the PendingConsultation reference to the current 3rdParty call
                mpThreeWayCallManager.PendingConsultationCall = (C3WayCall3rdParty)pCall.ThirdPartyCall;

                //Send the request
                UDConsultIn oParams = new UDConsultIn
                {
                    consultType = (int)ConsultType.ctInternal,
                    blindXferFlag = Convert.ToInt32(false),
                    userID = user.Id
                };

                Consult(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Consult the specified service
        /// </summary>
        public void Consult(CSimpleService service)
        {
            try
            {
                if (service == null)
                {
                    throw new ArgumentException("You must specify a service.", "service");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (!(this.CurrentCall is CCallVoice))
                {
                    throw new InvalidOperationException("Invalid request - Consult. The current call does not support consultations.");
                }

                if (!(this.CurrentCall.CurrentState.EnableConsult))
                {
                    throw new InvalidOperationException("Invalid request - Consult. Request not allowed in current state of current call.");
                }

                //Save the information about the consultation to the current 3rdParty call in case we need to refer to it later.
                CCallVoice pCall = (CCallVoice)this.CurrentCall;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationEntity = service;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationPhoneNumber = "";
                //Point the PendingConsultation reference to the current 3rdParty call
                mpThreeWayCallManager.PendingConsultationCall = (C3WayCall3rdParty)pCall.ThirdPartyCall;

                //Send the request
                UDConsultIn oParams = new UDConsultIn
                {
                    consultType = (int)ConsultType.ctInternal,
                    blindXferFlag = Convert.ToInt32(false),
                    serviceID = service.ServiceId
                };

                Consult(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Consult the specified phone number
        /// </summary>
        public void Consult(String phoneNumber, CExternalRoute externalRoute)
        {
            try
            {
                if (phoneNumber == null)
                {
                    throw new ArgumentException("You must specify a phone number.", "phoneNumber");
                }

                if (phoneNumber.Trim() == "")
                {
                    throw new ArgumentException("You must specify a phone number.", "phoneNumber");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Consult. There is no current call.");
                }

                if (!(this.CurrentCall is CCallVoice))
                {
                    throw new InvalidOperationException("Invalid request - Consult. The current call does not support consultations.");
                }

                if (!(this.CurrentCall.CurrentState.EnableConsult))
                {
                    throw new InvalidOperationException("Invalid request - Consult. Request not allowed in current state of current call.");
                }

                //Save the information about the consultation to the current 3rdParty call in case we need to refer to it later.
                CCallVoice pCall = (CCallVoice)this.CurrentCall;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationEntity = externalRoute;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationPhoneNumber = phoneNumber;
                //Point the PendingConsultation reference to the current 3rdParty call
                mpThreeWayCallManager.PendingConsultationCall = (C3WayCall3rdParty)pCall.ThirdPartyCall;

                UDConsultIn oParams = new UDConsultIn
                {
                    consultType = (int)ConsultType.ctExternal,
                    blindXferFlag = Convert.ToInt32(false),
                    phoneNumber = phoneNumber
                };
                if (externalRoute != null)
                {
                    oParams.externalRouteID = externalRoute.Id;
                }

                Consult(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Consult the specified phone number
        /// </summary>
        public void Consult(String phoneNumber)
        {
            try
            {
                Consult(phoneNumber, null);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Transfer the current call to the specified user
        /// </summary>
        public void Transfer(CUser user)
        {
            try
            {
                if (user == null)
                {
                    throw new ArgumentException("You must specify a user.", "user");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (!this.CurrentCall.CurrentState.EnableTransfer)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. Request not allowed in current state of current call.");
                }

                //[Blind] Transfer to User is actually requested via the consult method with blindXferFlag=true.
                //Save the information about the consultation to the current 3rdParty call in case we need to refer to it later.
                CCallVoice pCall = (CCallVoice)this.CurrentCall;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationEntity = user;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationPhoneNumber = "";
                //Point the PendingConsultation reference to the current 3rdParty call
                mpThreeWayCallManager.PendingConsultationCall = (C3WayCall3rdParty)pCall.ThirdPartyCall;

                UDConsultIn oParams = new UDConsultIn();

                //Set consultType corresponding to calltype of current call 
                switch (this.CurrentCall.MediaType)
                {
                    case AgentMediaType.amINBOUND_AGD:
                        oParams.consultType = (int)ConsultType.ctXferAGDToAgent;
                        break;

                    case AgentMediaType.amINBOUND_CHAT:
                        oParams.consultType = (int)ConsultType.ctXferChatToAgent;
                        break;

                    default:
                        oParams.consultType = (int)ConsultType.ctInternal;
                        break;
                }

                oParams.blindXferFlag = Convert.ToInt32(true);
                oParams.userID = user.Id;

                Consult(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Transfer the current call to the specified phone number
        /// </summary>
        public void Transfer(String phoneNumber)
        {
            try
            {
                Transfer(phoneNumber, null);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Transfer the current call to the specified phone number
        /// </summary>
        public void Transfer(String phoneNumber, CExternalRoute externalRoute)
        {
            try
            {
                if (phoneNumber == null)
                {
                    throw new ArgumentException("You must specify a phone number.", "phoneNumber");
                }

                if (phoneNumber.Trim() == "")
                {
                    throw new ArgumentException("You must specify a phone number.", "phoneNumber");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (!this.CurrentCall.CurrentState.EnableTransfer)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. Request not allowed in current state of current call.");
                }

                //[Blind] Transfer to external is actually requested via the consult method with blindXferFlag=true
                //
                //Save the information about the consultation to the current 3rdParty call in case we need to refer to it later.
                CCallVoice pCall = (CCallVoice)this.CurrentCall;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationEntity = externalRoute;
                ((C3WayCall3rdParty)pCall.ThirdPartyCall).consultationPhoneNumber = phoneNumber;
                //Point the PendingConsultation reference to the current 3rdParty call
                mpThreeWayCallManager.PendingConsultationCall = (C3WayCall3rdParty)pCall.ThirdPartyCall;

                UDConsultIn oParams = new UDConsultIn
                {
                    consultType = (int)ConsultType.ctExternal,
                    blindXferFlag = Convert.ToInt32(true),
                    phoneNumber = phoneNumber
                };
                if (externalRoute != null)
                {
                    oParams.externalRouteID = externalRoute.Id;
                }

                Consult(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private void Transfer(UDTransfer xferParams)
        {
            try
            {
                CCall pCall = this.CurrentCall;

                //Copy call's user defined fields
                UDCallInfoUserDefinedItemIn[] items = new UDCallInfoUserDefinedItemIn[20];
                for (int i = 0; i < items.Length; i++)
                {
                    items[i] = new UDCallInfoUserDefinedItemIn
                    {
                        key = pCall.userDefinedItems[i].key,
                        value = pCall.userDefinedItems[i].value
                    };
                }

                xferParams.originalCallID = this.CurrentCall.CallID;
                xferParams.callInfoUserDefined = new UDCallInfoUserDefinedIn { userDefinedItems = items };

                mpPortal.WSAgent.transfer(mpCurrentAgent.AgentArg, xferParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Transfer the current call to the specified service
        /// </summary>
        public void Transfer(CSimpleService service)
        {
            try
            {
                if (service == null)
                {
                    throw new ArgumentException("You must specify a service.", "service");
                }

                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (!this.CurrentCall.CurrentState.EnableTransfer)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. Request not allowed in current state of current call.");
                }

                UDTransfer oParams = new UDTransfer
                {
                    serviceID = service.ServiceId,
                    transferType = (int)TransferType.ttBlind
                };

                Transfer(oParams);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Transfer the current call to the consulted/conferenced party
        /// </summary>
        public void Transfer()
        {
            try
            {
                if (this.CurrentCall == null)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (this.CurrentCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current call.");
                }

                if (!(this.CurrentCall is CCallVoice))
                {
                    //This error message makes more sense for this request than "...current call does not support consultations..."
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current consultation call.");
                }

                CCallVoice pCall = (CCallVoice)this.CurrentCall;

                if (pCall.thirdPartyCall.CallID == 0)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. There is no current consultation call.");
                }

                if (!this.CurrentCall.CurrentState.EnableTransfer)
                {
                    throw new InvalidOperationException("Invalid request - Transfer. Request not allowed in current state of current call.");
                }
                UDTransfer oParams = new UDTransfer
                {
                    serviceID = pCall.ServiceID,
                    thirdParyCallID = pCall.ThirdPartyCall.CallID,
                    conferenceCallID = pCall.ConferenceCall.CallID,
                    transferType = (int)TransferType.ttWarm
                };
                //If not in Conference, the Conference CallID will be 0 which is fine - the Transfer to the consulted party will still be made.
                Transfer(oParams);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Conference-in the consulted party
        /// </summary>
        public void Conference()
        {
            if (this.CurrentCall == null)
            {
                throw new InvalidOperationException("Invalid request - Conference. There is no current call.");
            }

            if (this.CurrentCall.CallID == 0)
            {
                throw new InvalidOperationException("Invalid request - Conference. There is no current call.");
            }

            if (!(this.CurrentCall is CCallVoice))
            {
                //This error message makes more sense for this request than "...current call does not support consultations..."
                throw new InvalidOperationException("Invalid request - Conference. There is no current consultation call.");
            }

            CCallVoice pCall = (CCallVoice)this.CurrentCall;

            if (pCall.thirdPartyCall.CallID == 0)
            {
                throw new InvalidOperationException("Invalid request - Conference. There is no current consultation call.");
            }

            if (!this.CurrentCall.CurrentState.EnableConference)
            {
                throw new InvalidOperationException("Invalid request - Conference. Request not allowed in current state of current call.");
            }

            UDConferenceIn oParams = new UDConferenceIn
            {
                callID = this.CurrentCall.CallID,
                consultCallID = ((CCallVoice)this.CurrentCall).ThirdPartyCall.CallID
            };

            mpPortal.WSAgent.conference(mpCurrentAgent.AgentArg, oParams);
        }

        /// <summary>
        /// Accept the current call
        /// </summary>
        public void AcceptCall()
        {
            //TODO: Validate request
            UDAnswerCall oAnswer = new UDAnswerCall();
            oAnswer.result = Convert.ToInt32(false);
            oAnswer.agentIndex = mpCurrentAgent.AgentIndex;
            oAnswer.callID = mpCallManager.CurrentCall.CallID;

            mpPortal.WSAgent.answerCall(mpCurrentAgent.AgentArg, oAnswer);
        }

        /// <summary>
        /// Reject the current call with the specified reason
        /// </summary>
        public void RejectCall(CCallRejectionReason pRejectionReason)
        {
            //TODO: Validate request
            UDAnswerCall oAnswer = new UDAnswerCall();
            oAnswer.result = Convert.ToInt32(true);
            oAnswer.agentIndex = mpCurrentAgent.AgentIndex;
            oAnswer.callID = mpCallManager.CurrentCall.CallID;
            if (pRejectionReason != null)
            {
                oAnswer.rejectReason = pRejectionReason.Id;
            }

            mpPortal.WSAgent.answerCall(mpCurrentAgent.AgentArg, oAnswer);
        }

        /// <summary>
        /// Reject the current call
        /// </summary>
        public void RejectCall()
        {
            RejectCall(null);
        }

        public CAgents GetAgents()
        {
            CAgents oAgents = new CAgents(this);
            oAgents.Load(this.CurrentService.serviceId);
            return oAgents;
        }

        public CSupervisors GetSupervisors()
        {
            CSupervisors oSups = new CSupervisors(this);
            oSups.Load(this.CurrentService.serviceId);
            return oSups;
        }

        public CServices GetServices()
        {
            CServices oSvcs = new CServices(this);
            switch (this.CurrentService.ServiceType)
            {
                case ServiceType.CTI:
                case ServiceType.AGD:
                case ServiceType.CHAT:
                    oSvcs.Load(this.CurrentService.ServiceType);
                    break;
                default:
                    oSvcs.Load();
                    break;
            }

            return oSvcs;
        }

        public void SendChatMessage(CCallChat pCall, String sMessage)
        {
            //TODO: Validate request
            if (pCall == null)
            {
                throw new InvalidOperationException("Invalid request - SendChatMessage. You must specify a call.");
            }

            UDChatMessage oMessageParams = new UDChatMessage { callId = pCall.CallID, text = sMessage };
            //TODO: If there's also a voice call, the callid of the chat call may not be that of the current call.

            mpPortal.WSAgent.chatSendMessage(mpCurrentAgent.AgentArg, oMessageParams);
        }

        public void SendChatURL(CCallChat pCall, String sURL)
        {
            //TODO: Validate request
            if (pCall == null)
            {
                throw new InvalidOperationException("Invalid request - SendChatURL. You must specify a call.");
            }

            //Must send URLs with http or customer's web app won't handle them properly
            //Only check for http in case user specified https
            if (!(sURL.StartsWith("http", StringComparison.OrdinalIgnoreCase)))
            {
                sURL = "http://" + sURL;
            }

            UDChatURL oURLParams = new UDChatURL { callId = pCall.CallID, url = sURL };
            //TODO: If there's also a voice call, the callid of the chat call may not be that of the current call.

            mpPortal.WSAgent.chatSendURL(mpCurrentAgent.AgentArg, oURLParams);
        }

        internal void ConnectToChatServer(CCallChat pCall)
        {
            try
            {
                UDChatConnect oConnectParams = new UDChatConnect
                {
                    callId = pCall.CallID,
                    serviceId = pCall.ServiceID,
                    chatserverIP = pCall.ChatServerIP,
                    chatserverCSLPort = pCall.ChatServerPort,
                    entityType = (int)ChatEntityType.ceAgent,
                    firstName = mpCurrentAgent.FirstName,
                    lastName = mpCurrentAgent.LastName
                };

                mpPortal.WSAgent.chatConnect(mpCurrentAgent.AgentArg, oConnectParams);
            }
            catch (Exception pError)
            {
                Console.WriteLine(pError.StackTrace);
            }
        }

        internal bool EnableKeepAlives
        {
            set
            {
                if (value && mpKeepAliveTimer == null)
                {
                    //Start sending KeepAlives
                    TimerCallback timerDelegate = SendKeepAlive;
                    mpKeepAliveTimer = new Timer(timerDelegate, this, 60000, 60000);
                }
                else if (!value && mpKeepAliveTimer != null)
                {
                    mpKeepAliveTimer.Dispose();
                    mpKeepAliveTimer = null;
                }
            }
        }

        private void SendKeepAlive(Object state)
        {
            try
            {
                mpPortal.WSAgent.keepAlive(CurrentAgent.AgentArg);
            }
            catch (Exception pError)
            {
                Console.WriteLine(pError.StackTrace);
            }
        }

        internal void OnStateChange(CStateChangeArgs pArgs)
        {
            if (StateChange != null)
            {
                StateChange(this, pArgs);
            }
        }

        internal void OnUnfocusedStateChange(CUnfocusedStateChangeArgs pArgs)
        {
            if (UnfocusedStateChange != null)
            {
                UnfocusedStateChange(this, pArgs);
            }
        }

        internal void OnCallStateChange(CCallStateChangeArgs pArgs)
        {
            if (CallStateChange != null)
            {
                CallStateChange(this, pArgs);
            }
        }

        internal void OnUnfocusedCallStateChange(CUnfocusedCallStateChangeArgs pArgs)
        {
            if (UnfocusedCallStateChange != null)
            {
                UnfocusedCallStateChange(this, pArgs);
            }
        }

        internal void OnPasscode(CPasscodeArgs pArgs)
        {
            if (Passcode != null)
            {
                Passcode(this, pArgs);
            }
        }

        internal void OnLogoutPending()
        {
            if (LogoutPending != null)
            {
                LogoutPending(this);
            }
        }

        internal void OnScreenpop(CScreenpopArgs pArgs)
        {
            if (Screenpop != null)
            {
                Screenpop(this, pArgs);
            }
        }

        internal void OnCallActivated(CCallActivatedArgs pArgs)
        {
            if (CallActivated != null)
            {
                CallActivated(this, pArgs);
            }
        }

        internal void OnPhoneStatus(CPhoneStatusArgs pArgs)
        {
            if (PhoneStatus != null)
            {
                PhoneStatus(this, pArgs);
            }
        }

        internal void OnError(CErrorArgs pArgs)
        {
            if (Error != null)
            {
                Error(this, pArgs);
            }
        }

        internal void OnLoggedIn()
        {
            if (LoggedIn != null)
            {
                LoggedIn(this);
            }
        }

        internal void OnChatEntityAdded(CChatEntityArgs pArgs)
        {
            if (ChatEntityAdded != null)
            {
                ChatEntityAdded(this, pArgs);
            }
        }

        internal void OnChatEntityRemoved(CChatEntityArgs pArgs)
        {
            if (ChatEntityRemoved != null)
            {
                ChatEntityRemoved(this, pArgs);
            }
        }

        internal void OnChatURL(CChatURLArgs pArgs)
        {
            if (ChatURL != null)
            {
                ChatURL(this, pArgs);
            }
        }

        internal void OnChatMessage(CChatMessageArgs pArgs)
        {
            if (ChatMessage != null)
            {
                ChatMessage(this, pArgs);
            }
        }

        internal bool ServiceExists(int ServiceId)
        {
            UDInfo oInfo = new UDInfo { listType = (int)AgentInfoType.GET_CHECK_SERVICE_EXISTS, serviceId = ServiceId };
            GetIdDesc oItem = (GetIdDesc)mpPortal.WSAgent.getInfo(mpCurrentAgent.AgentArg, oInfo);
            return Convert.ToBoolean(oItem.id);
        }

        #endregion
    }
}
