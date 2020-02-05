using Newtonsoft.Json;
using SalesForceTestRequest.EPEventsWS;
using System;

// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable InconsistentNaming
namespace SalesForceTestRequest.ServiceClass
{
	public enum AgentMediaType
	{
		amNONE = 0,
		amINBOUND_ACD = 1,
		amINBOUND_DID = 2,
		amINBOUND_IVR = 3,
		amINBOUND_UNDEFINED = 4,
		amINBOUND_EXTERNAL = 5,
		amINBOUND_FAX = 6,
		amINBOUND_VOICEMAIL = 7,
		amOUTBOUND_AOD = 8,					//AOD call (preview or automatic)
		amOUTBOUND_CONFERENCE = 9,
		amOUTBOUND_CONSULT = 10,      
		amOUTBOUND_CONSULT_XFER = 11,
		amOUTBOUND_FAX = 12,
		amOUTBOUND_EXTERNAL = 13,
		amOUTBOUND_MANUAL = 14,				//Manual call to external number		
		amOUTBOUND_TPCON_XFER = 15,	
		amINTERNAL_CONFERENCE = 16,
		amINTERNAL_CONSULT = 17,
		amINTERNAL_CONSULT_XFER = 18,
		amINTERNAL_MANUAL = 19,				
		amOUTBOUND_MESSAGE = 20,
		amINTERNAL_MONITORING = 21,
		amINTERNAL_RECORDING = 22,
		amINBOUND_CHAT = 23,          
		amINBOUND_EMAIL_NLP = 24,
		amINBOUND_EMAIL_AGENTSEL = 25,
		amINBOUND_EMAIL_SELFSERV = 26,
		amINBOUND_EMAIL_CDREVIEW = 27,
		amINBOUND_EMAIL_SEND = 28,
		amOUTBOUND_EMAIL = 29,
		amINBOUND_AGD = 30,
		amINBOUND_CTI = 31
	};

    public enum AgentCallType
    {
        acACD = 1,
        acAOD = 2,
        acCONFERENCE = 3,
        acCONSULTATION = 4,
        acCONSULTATION_XFER = 5, 
        acDID = 6,
        acFAX = 7,
        acIVR = 8,
        acMANUAL = 9, 
        acMESSAGE = 10,
        acMONITORING = 11,
        acRECORDING = 12,
        acTHIRD_PARTY_CONSULT_XFER = 13,
        acUNDEFINED = 14,
        acEXTERNAL = 15,
        acVOICEMAIL = 16,
        acCHAT = 17,
        acEMAIL_MEDIA = 18,
        acEMAIL_SELECT = 19,
        acEMAIL_SELF_SERV = 20,
        acEMAIL_CDREVIEW = 21,
        acEMAIL_SEND = 22,
        acEMAIL_OUTBOUND = 23,
        acAGD = 24,
        acCTI = 25
    };

    public class CCallGeneric
    {
        public int CallID { get { return this.callID; } }
        public CState CurrentState { get { return currentState; } }

        //internal int callID;
        internal virtual int callID { get; set; }

        internal CState currentState;

        internal CCallGeneric()
        {
        }
    }

    public class CCall: CCallGeneric
	{
        internal override int callID 
        { 
            get { return base.callID; } 
            set 
            { 
                base.callID = value;
                this.firstPartyCall.callID = value;
            } 
        }
        
        public int Preemptive{get{return this.preemptive;}}
		public int StatusReason{get{return this.statusReason;}}
		public int CallCategory{get{return this.callCategory;}}
        public AgentCallType CallType { get { return this.callType; } }
		public int EventCode{get{return this.eventCode;}}
		public int OriginalServiceID{get{return this.originalServiceID;}}
		public int ServiceID{get{return this.serviceID;}}
		public string Ani{get{return this.ani;}}
		public string CallerID{get{return this.callerID;}}
		public string Dnis{get{return this.dnis;}}
		public string FirstName{get{return this.firstName;}}
		public string LastName{get{return this.lastName;}}
		public string PhoneNumber{get{return this.phoneNumber;}}
		public UDCallInfoUserDefinedItem[] UserDefinedItems{get{return this.userDefinedItems;}}
		public AgentMediaType MediaType{get{return this.mediaType;}}
		public bool CallbackRequested{get{return callbackRequested;}}
		public bool ExclusionRequested{get{return exclusionRequested;}}
        public C3WayCall FirstPartyCall { get { return this.firstPartyCall; } }
        public bool ResponseRequired { get { return this.responseRequired; } }
        public bool RejectionReasonRequired { get { return this.rejectionReasonRequired ; } }
        public int ResponseTimeoutInSecs { get { return this.responseTimeoutInSecs; } }
        public bool PlayAudioAlert { get { return this.playAudioAlert ; } }
        
		internal int preemptive;
		internal int statusReason;
		internal int callCategory;
		internal AgentCallType callType;
		internal int eventCode;
		internal int originalServiceID;
		internal int serviceID;
		internal string ani;
		internal string callerID;
		internal string dnis;
		internal string firstName;
		internal string lastName;
		internal string phoneNumber;
		internal UDCallInfoUserDefinedItem[] userDefinedItems;
        internal AgentMediaType mediaType;
		internal bool callbackRequested=false;
		internal bool exclusionRequested=false;
        internal C3WayCall firstPartyCall = new C3WayCall1stParty();
		internal bool responseRequired=false;
        internal bool rejectionReasonRequired = false;
        internal int responseTimeoutInSecs;
        internal bool playAudioAlert = false;
        
		internal CCall()
		{
			userDefinedItems = new UDCallInfoUserDefinedItem[20];
			for (int i = 0; i < userDefinedItems.Length; i++)
			{
				userDefinedItems[i] = new UDCallInfoUserDefinedItem {key = "", value = ""};
			}
        
            this.firstPartyCall.parentCall = this;
        }

		internal CCall(UDScreenPop pCall)
		{
			this.callID=pCall.callID;
			this.preemptive=pCall.preemptive;
			this.statusReason=pCall.statusReason;
			this.callCategory=pCall.callInfo.otherData.callCategory;
			this.callType=(AgentCallType)pCall.callInfo.otherData.callType; 
			this.eventCode=pCall.callInfo.otherData.eventCode;
			this.originalServiceID=pCall.callInfo.otherData.originalServiceID;
			this.serviceID=pCall.callInfo.otherData.serviceID;
			this.ani=pCall.callInfo.screenData.ani;
			this.callerID=pCall.callInfo.screenData.callerID;
			this.dnis=pCall.callInfo.screenData.dnis;
			this.firstName=pCall.callInfo.screenData.firstName;
			this.lastName=pCall.callInfo.screenData.lastName;
			this.phoneNumber=pCall.callInfo.screenData.phoneNumber;
			this.userDefinedItems=pCall.callInfo.userDefinedData.userDefinedItems;
            this.responseRequired=pCall.requiredResponse;
            this.rejectionReasonRequired = pCall.requiredRejectReason;
            this.responseTimeoutInSecs = pCall.timeoutForAcceptCall;
            this.playAudioAlert = pCall.playAudioAlert;
            
            this.firstPartyCall.parentCall = this;
        }

		internal CCall(UDPreview pCall)
		{
			this.callID=pCall.callID;
			this.preemptive=pCall.preemptive;
			this.statusReason=pCall.statusReason;
			this.callCategory=pCall.callInfo.otherData.callCategory;
			this.callType=(AgentCallType)pCall.callInfo.otherData.callType; 
			this.eventCode=pCall.callInfo.otherData.eventCode;
			this.originalServiceID=pCall.callInfo.otherData.originalServiceID;
			this.serviceID=pCall.callInfo.otherData.serviceID;
			this.ani=pCall.callInfo.screenData.ani;
			this.callerID=pCall.callInfo.screenData.callerID;
			this.dnis=pCall.callInfo.screenData.dnis;
			this.firstName=pCall.callInfo.screenData.firstName;
			this.lastName=pCall.callInfo.screenData.lastName;
			this.phoneNumber=pCall.callInfo.screenData.phoneNumber;
			this.userDefinedItems=pCall.callInfo.userDefinedData.userDefinedItems;
            
            this.firstPartyCall.parentCall = this;
        }
	}

    public class CCallVoice: CCall
    {
        public C3WayCall ThirdPartyCall { get { return this.thirdPartyCall; } }
        public C3WayCall ConferenceCall { get { return this.conferenceCall; } }

        internal C3WayCall thirdPartyCall = new C3WayCall3rdParty();
        internal C3WayCall conferenceCall = new C3WayCallConference();

        private void Initialize()
        {
            this.thirdPartyCall.parentCall = this;
            this.conferenceCall.parentCall = this;
        }

        internal CCallVoice()
        {
            Initialize();
        }

    	internal CCallVoice(UDScreenPop pCall)
            : base(pCall)
        {
            Initialize();
        }

        internal CCallVoice(UDPreview pCall)
            : base(pCall)
        {
            Initialize();
        }
    }

	public class CCallAOD: CCallVoice
	{
		public int CallTableRecordNum{get{return callTableRecordNum;}}
		public int StoreManagerId{get{return storeManagerId;}}
		public string TableName{get{return tableName;}}
		public int TargetManagerId{get{return targetManagerId;}}
		public int CallBackFlag{get{return callBackFlag;}}
		public string CallbackMemo{get{return callbackMemo;}}
		public int CallbackDialMode{get{return callbackDialMode;}}
		public bool CallbackFailed{get{return callbackFailed;}}

		internal int callTableRecordNum;
		internal int storeManagerId;
		internal string tableName;
		internal int targetManagerId;
		internal int callBackFlag;
		internal string callbackMemo;
		internal int callbackDialMode;
		internal bool callbackFailed;

		internal CCallAOD(UDScreenPop pCall)
			:base(pCall)
		{
			this.callTableRecordNum = pCall.callInfo.aodData.callTableRecordNum;
			this.storeManagerId = pCall.callInfo.aodData.storeManagerId;
			this.tableName = pCall.callInfo.aodData.tableName;
			this.targetManagerId = pCall.callInfo.aodData.targetManagerId;
			this.callBackFlag = pCall.callInfo.callbackData.callBackFlag;
			this.callbackMemo = pCall.callInfo.callbackData.callbackMemo;
			this.callbackDialMode = pCall.callInfo.callbackData.dialModeCode;
			this.callbackFailed = false;
		}

		internal CCallAOD(UDPreview pCall)
			:base(pCall)
		{
			const int ciCALLBACK_FAILED = 54;

			this.callTableRecordNum = pCall.callInfo.aodData.callTableRecordNum;
			this.storeManagerId = pCall.callInfo.aodData.storeManagerId;
			this.tableName = pCall.callInfo.aodData.tableName;
			this.targetManagerId = pCall.callInfo.aodData.targetManagerId;
			this.callBackFlag = pCall.callInfo.callbackData.callBackFlag;
			this.callbackMemo = pCall.callInfo.callbackData.callbackMemo;
			this.callbackDialMode = pCall.callInfo.callbackData.dialModeCode;
			this.callbackFailed = (this.eventCode == ciCALLBACK_FAILED);
		}
	}

    public class CCallEmail: CCall
	{
		public string ForwardToMBox{get{return forwardToMBox;}}
		public int MailQueId{get{return mailQueId;}}
		public int MessageId{get{return messageId;}}

		internal string forwardToMBox;
		internal int mailQueId;
		internal int messageId;

		internal CCallEmail(UDScreenPop pCall)
		:base(pCall)
		{
			this.forwardToMBox=pCall.callInfo.emailData.forwardToMBox;
			this.mailQueId=pCall.callInfo.emailData.mailQueId;
			this.messageId=pCall.callInfo.emailData.messageId ;
		}
	}

    public class CCallChat: CCall
	{
		public string ChatServerIP{get{return chatServerIP;}}
		public int ChatServerPort{get{return chatServerPort;}}
		
		internal string chatServerIP=null;
		internal int chatServerPort=0;

		internal CCallChat(UDScreenPop pCall)
			:base(pCall)
		{
		}
	}

    public class CCallRemainingConsultation : CCallVoice
    {
        public C3WayCall3rdParty Root3rdPartyCall {get{return this.root3rdPartyCall;}}

        internal C3WayCall3rdParty root3rdPartyCall;

        internal CCallRemainingConsultation(C3WayCall3rdParty root3rdPartyCall)
        {
            this.root3rdPartyCall = root3rdPartyCall;
            
            //Copy parameters of consultation call which this call represents
            this.callID = root3rdPartyCall.CallID;
            //Have it emulate a manual call (ie, as if dialed from Idle)
            this.mediaType = ((root3rdPartyCall.MediaType == AgentMediaType.amINTERNAL_CONSULT) ? AgentMediaType.amINTERNAL_MANUAL : AgentMediaType.amOUTBOUND_MANUAL);
            this.callType = AgentCallType.acMANUAL;

            //Copy parameters of consultation's main call for functions that depend on them (eg, EnableX properties of states and Record method)
            this.serviceID = root3rdPartyCall.ParentCall.ServiceID;
            this.phoneNumber = root3rdPartyCall.ParentCall.PhoneNumber;
            this.firstName = root3rdPartyCall.ParentCall.FirstName;
            this.lastName = root3rdPartyCall.ParentCall.LastName;
        }
    }

    public class C3WayCall: CCallGeneric 
    {
		[JsonIgnore]
        public CCall ParentCall { get { return parentCall; } }

        internal CCall parentCall=null;

        internal C3WayCall()
        {
        }
    }

    public class C3WayCall1stParty : C3WayCall
    {
        internal C3WayCall1stParty()
		{
		}
    }

    public class C3WayCall3rdParty : C3WayCall
    {
        public Object ConsultationEntity { get { return this.consultationEntity; } }
        public String ConsultationPhoneNumber { get { return this.consultationPhoneNumber; } }
        public AgentMediaType MediaType { get { return this.mediaType; } }
 
        //Add additional members specific to 3rdParty call.
        internal Object consultationEntity=null;
        internal String consultationPhoneNumber="";
        internal AgentMediaType mediaType=0;

        internal C3WayCall3rdParty()
        {
        }
    }

    public class C3WayCallConference : C3WayCall
    {
        internal C3WayCallConference()
        {
        }
    }

	/// <summary>
	/// Summary description for CCallManager.
	/// </summary>
	internal class CCallManager: CList
	{
	    internal CCall CurrentCall { get; set; }

	    internal CCall PendingManualCall { get; set; }

	    internal void Add(int key, CCall value)
		{
			base.Add(key, value);
		}

		internal void RemoveByKey(int key)
		{
			base.RemoveByKey(key);
        }

        internal new void RemoveAt(int index)
        {
            base.RemoveAt(index);
        }

		internal CCall GetByKey(int key)
		{
			return (CCall)base.GetByKey(key);
		}
		
		internal new CCall this[int index]
		{
			get{return (CCall)base[index];}
		}

		internal CCall CreateCall(UDScreenPop pCall)
		{
			
			switch (pCall.callInfo.otherData.callType)
			{
				case (int)AgentCallType.acAOD:
                    return (new CCallAOD(pCall));
				
				case (int)AgentCallType.acCHAT:
					return (new CCallChat(pCall));
				
				case (int)AgentCallType.acEMAIL_SELECT: 
					return (new CCallEmail(pCall));
				
				case (int)AgentCallType.acEMAIL_CDREVIEW: 
					return (new CCallEmail(pCall));
				
				case (int)AgentCallType.acEMAIL_SELF_SERV: 
					return (new CCallEmail(pCall));

                default:
					return (new CCallVoice(pCall));
			}
		}
        
		internal CCall CreateCall(UDPreview pCall)
		{
			return (new CCallAOD(pCall));
		}
	}
    
    /// <summary>
    /// Summary description for C3WayCallManager.
    /// </summary>
    internal class C3WayCallManager : CList
    {
        internal C3WayCall3rdParty PendingConsultationCall { get; set; }

        internal void Add(int key, C3WayCall value)
        {
            base.Add(key, value);
        }

        internal void RemoveByKey(int key)
        {
            base.RemoveByKey(key);
        }

        internal C3WayCall GetByKey(int key)
        {
            return (C3WayCall)base.GetByKey(key);
        }

        internal new C3WayCall this[int index]
        {
            get { return (C3WayCall)base[index]; }
        }
    }
}
