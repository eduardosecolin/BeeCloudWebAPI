using SalesForceTestRequest.EPAgentWS;
using SalesForceTestRequest.EPEventsWS;
using System;
using System.Threading;

// ReSharper disable InconsistentNaming
namespace SalesForceTestRequest.ServiceClass
{
	internal enum AgentEventType
	{
		aeAUTHENTICATED = -1,
		aeERROR = 1,
		aePHONEFOUL = 2,
		aePHONEOFFHOOK = 3,
		aeUPDATESERVICE = 4,
		aeREMOVESERVICE = 5,
		aeUPDATEDISPOSITION = 6,
		aeUPDATEDISPOSTIONPLAN = 7,
		aeNEWVOICEMAIL = 8,
		aeUPDATECALLDATADEF = 9,
		aeUPDATEAGENTSTATUSREASONS = 10,
		aeUPDATEEXTERNALROUTE = 11,
		aeUPDATEREALTIMEPORT = 12,
		aeLOGINCONF = 13,
		aeSYSTEMWAIT = 14,
		aeLOGGINGIN = 15,
		aePASSCODE = 16,
		aeNEWSERVICE = 17,
		aeLOGIN = 18,
		aeIDLE = 19,
		aeLOGOUT = 20,
		aeSCREENPOP = 21,
		aeACTIVE = 22,
		aeHELD = 23,
		aeWRAP = 24,
		aeDIALING = 25,
		aeCALLCLEAR = 26,
		aePREVIEW = 27,
		aeCONSULT = 28,
		aeCALLXFERRED = 29,
		aeCALLRELEASEDXFERRED = 30,
		aeCALLREROUTED = 31,
		aeCONFERENCE = 32,
		aeRECORDINGSTATE = 33,
		aeMONITORSTATE = 34,
		aeGATEWAYDOWN = 35,
		aeGATEWAYUP = 36,
		aeCTIDOWN = 37,
		aeCTIUP = 38,
		aeLOGOUTPENDING = 39,
		aeNOTREADYPENDING = 40,
		aeNOTREADY = 41,
		aePHONERECONNECT = 42,
		aeLISTCHATENTITIES = 43,
		aeCHATMESSAGE = 44,
		aeCHATURL = 45,
		aeCHATDIALREQUEST = 46,
		aeACTIVATECALL = 47,
		aeDIRECTORACK = 48,
		aeBADPASSCODE = 49,
		aeCHATENTITYADDED = 50,
		aeCHATENTITYREMOVED = 51,
		aeADVANCEFEATURE = 52,
		aeSCREENCAPTURE = 53,
		aeAGENTSTATS = 54,
		aeSESSIONTIMED_OUT = 55,
		aeCENTERCORDDOWN = 56,
		aeCENTERCORDUP = 57,
		aeAUDIOPATHCONNECTION = 60
	};

	internal enum AgentInfoType
	{
		GET_LOGGED_IN_USERS = 100,
		GET_SPEED_DIALS = 101,
		GET_STATUS_REASONS = 102,
		GET_XFER_TO_AGENT_LIST = 103,
		GET_XFER_TO_DIRECTOR_LIST = 104,
		GET_XFER_TO_SERVICE_LIST = 105,
		GET_SERVICE = 106,
		GET_SERVICE_SETTINGS = 107,
		GET_SERVICE_EMAIL_QUEUES = 108,
		GET_DISPOSTION_PLAN = 109,
		GET_DISPOSITIONS = 110,
		GET_DISPOSTION = 111,
		GET_CALL_DATA_DEF = 112,
		GET_CALL_DATA_DEF_FIELDS = 113,
		GET_CALLBACK_SERVICE_LIST = 114,
		GET_URL = 115,
		GET_RECORDINGS = 116,
		GET_VOICE_MAIL_RECORDING = 117,
		UPDATE_VOICE_MAIL_RECORDING_STATUS = 118,
		UPDATE_MEDIA_RECORDING_STATUS = 119,
		UPDATE_RECORDING_COMMENT = 120,
		GET_CHECK_VOICE_MAIL = 121,
		GET_CHECK_SERVICE_EXISTS = 122,
		GET_CENTERCORD_INFO = 123,
		GET_CALL_LOGGER_INFO = 124,
		GET_APPLICATIONS = 125,
		GET_DISPOSTION_TYPE = 126,
		GET_SERVICE_LIST = 127,
		GET_RECORDING_COMMENT = 128,
		GET_MEDIA_RECORDINGS_COUNT = 129,
		GET_MEDIA_RECORDINGS = 130,
		GET_SEARCH_MEDIA_RECORDINGS = 131,
		GET_EMAIL_ATTACHMENT_ID = 132,
		GET_EMAIL_ATTACHMENT_FILE_INFO = 133,
		GET_MAILQ_EMAIL = 134,
		GET_MAILQ_EMAIL_SUBJECT = 135,
		GET_SERVICE_EMAIL = 136,
		GET_CATEGORY_COUNT = 137,
		GET_KBASE_CATEGORIES = 138,
		GET_EMAIL_GREETINGS = 139,
		GET_EMAIL_CLOSINGS = 140,
		GET_AGENTS_ALLOW_KB_SETTING = 141,
		GET_USER_SETTINGS = 142,
		GET_LOGIN_USER = 143, 
		GET_SPEED_DIAL = 144,
		GET_EMAIL_BODY = 146,
		GET_EMAIL_SIGNATURE = 147,
		GET_EMAIL_ATTACHEMENT = 148,
		GET_NLP_CATEGORIES = 149,
		GET_SERVICE_EMAIL_SUBJECT = 150,
		GET_SERVICE_URLS = 151,
		GET_STATION_BROADBAND_CHANNEL = 152,
		GET_USER_VOICE_MAIL_RECORDINGS = 153,
		GET_SERVICE_VOICE_MAIL_RECORDINGS = 154,
		GET_RECORDING_CLASSES = 155,
		GET_RECORDING_CLASS_DESCRIPTION = 156,
		GET_RECORDING_CLASS_ID = 157,
		GET_SITE_ID = 158,
		GET_AWS_VERSION = 159,
		GET_TENANT_SHORT_NAME = 160,
		GET_AGENT_SETTINGS = 162
	};

	internal class CEventArrivalArgs:EventArgs
	{
		private readonly AgentEvent mpNextEvent;
		public CEventArrivalArgs(AgentEvent pNextEvent){ mpNextEvent = pNextEvent;}
		public AgentEvent NextEvent {get{return mpNextEvent;}}
	}

	internal delegate void EventArrivalHandler(Object pSender, CEventArrivalArgs pArgs);
		
	/// <summary>
	/// Summary description for CPortal.
	/// </summary>
	internal class CPortal
	{
		private Timer mpEventPollingTimer;
		private int miAgentIndex;
        private long mlLastEvent;

		public EventServiceService WSEvents;
		public AgentWebServiceService WSAgent;
		public event EventArrivalHandler EventArrival;

		public CPortal()
		{
			WSEvents = new EventServiceService();
			WSAgent = new AgentWebServiceService {CookieContainer = new System.Net.CookieContainer()};
		}

		public void RegisterEx(UDAgent pAgent, UDAgentInfo pAgentInfo, UDProperty[] properties)
		{
			try
			{
				//Start polling for this agent's events
				miAgentIndex = WSEvents.registerAgentEventSubscriber(pAgent.agentLoginName);
				TimerCallback timerDelegate = GetNextEvent;
				mpEventPollingTimer = new Timer(timerDelegate, this, 100, 100);

				//Log into Centercord
				WSAgent.registerEx(pAgent, pAgentInfo, properties);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}

		public void Unregister(UDAgent pAgent)
		{
			try
			{
		        //Unregister with Agent Web Service
                WSAgent.unRegister(pAgent);

                //Stop polling for events
                if (mpEventPollingTimer != null)
                {
                    mpEventPollingTimer.Dispose();
                    mpEventPollingTimer = null;
                }

                //Unregister with Events Web Service
			    if (miAgentIndex > 0)
			    {
			        WSEvents.unregisterAgentEventSubscriber(miAgentIndex);
			    }
			}
            catch (Exception pError)
            {
                Console.WriteLine(pError.StackTrace);
            }
        }

		private void GetNextEvent(Object state)
	{
			AgentEvent pEvent = null;

            try
            {
                if (mpEventPollingTimer != null)
                {
                    //Pause timer while we check for an event for this agent 
                    mpEventPollingTimer.Change(Timeout.Infinite, Timeout.Infinite);

                    //Get this agent's next event and raise it to all subscribers
                    pEvent = WSEvents.getNextAgentEventAck(miAgentIndex, mlLastEvent);
                    if (pEvent != null)
                    {
                        mlLastEvent = pEvent.eventTimestamp;
                        Console.WriteLine("AWS Event: id<" + pEvent.eventId + ">, payload<" + pEvent.payload.GetType() + ">");
                        OnEventArrival(new CEventArrivalArgs(pEvent));
                    }

                }
            }
            catch (Exception pError)
            {
                Console.WriteLine(pError.StackTrace);
            }
			finally
			{
                if (mpEventPollingTimer != null)
                {
                    // If we got an event, there's probably another one waiting.  Fire the timer immediately. 
                    // Otherwise, fire timer in 100ms.
                    mpEventPollingTimer.Change(pEvent != null ? 0 : 100, Timeout.Infinite);
                }
            }
		}

		protected virtual void OnEventArrival(CEventArrivalArgs pArgs)
		{
		    if (EventArrival != null)
		    {
		        EventArrival(this, pArgs);
		    }
		}
	}
}
