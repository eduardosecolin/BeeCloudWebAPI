using SalesForceTestRequest.EPAgentWS;
using System;
using System.Collections;

// ReSharper disable CanBeReplacedWithTryCastAndCheckForNull
// ReSharper disable RedundantBaseQualifier
// ReSharper disable SuggestUseVarKeywordEvident
// ReSharper disable InconsistentNaming
namespace SalesForceTestRequest.ServiceClass
{
	/// <summary>
	/// Summary description for CLists.
	/// </summary>
	public class CList: ICollection 
	{
        private readonly ArrayList pValues;
		private readonly ArrayList pKeys;
		
		protected CList()
		{
			//
			// TODO: Add constructor logic here
			//
			pValues = new ArrayList();
			pKeys = new ArrayList();
		}
		
		public int Count {get{return pValues.Count;}}
		
		public bool IsSynchronized {get{return false;}}
		
		public object SyncRoot {get{return this;}}
		
		public void CopyTo(Array array,int index)
		{
			pValues.CopyTo(array, index);
		}

		public IEnumerator GetEnumerator()
		{
			return new CListEnumerator(this);
		}

		public bool Contains(object key)
		{
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

		    return pKeys.Contains(key);
		}
		
		protected void Add(object key, object value)
		{
			//Don't allow null keys
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

		    //Don't allow duplicate keys
		    if (pKeys.Contains(key))
		    {
		        throw (new ArgumentException("The specified key already exists. Duplicate keys are not allowed.", "key"));
		    }

		    pValues.Add(value);
			pKeys.Add(key);
		}

		public object this[int index]
		{
			get{return pValues[index];}
		}

		protected object GetByKey(object key)
		{
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

		    //Find index of key
			int index = pKeys.IndexOf(key);
			//return value at that index
			return pValues[index];
		}

		protected void SetByKey(object key, object value)
		{
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

		    //Find index of key
			int index = pKeys.IndexOf(key);
			//set value at that index
			pValues[index]=value;
		}

		public int IndexOf(object key)
		{
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

            return pKeys.IndexOf(key);
		}

		protected void RemoveAt(int index)
		{
			pValues.RemoveAt(index);
			pKeys.RemoveAt(index);
		}
		
		protected internal void RemoveByKey(object key)
		{
		    if (key == null)
		    {
		        throw (new ArgumentNullException("key", "Null keys are not allowed"));
		    }

			//created by eduardo and lucas 04/03/2020
			if (pKeys.Count == 0 || pValues.Count == 0) return;

            int index = pKeys.IndexOf(key);
			pKeys.RemoveAt(index);
			pValues.RemoveAt(index);
		}

		protected void Clear()
		{
			pKeys.Clear();
			pValues.Clear();
		}
		
		private class CListEnumerator : IEnumerator
		{
			private readonly CList Items; 
			private int Cursor;
	
			public CListEnumerator(CList Items)
			{
				this.Items = Items;
				Cursor = -1;
			} 

			public void Reset()
			{
				Cursor = -1;
			}

			public bool MoveNext()
			{
				if (Cursor < this.Items.Count)
					Cursor++;

				return Cursor != this.Items.Count;
			}

			public object Current
			{
				get
				{
				    if ((Cursor < 0) || (Cursor == this.Items.Count))
				    {
				        throw new InvalidOperationException();
				    }

				    return this.Items[Cursor];
				}
			} 
		}
    }
 

	internal enum StatusReasonType
	{
		NOT_READY = 5,
		LOG_OUT = 20,
		CALL_REJECTION = 29
	}

	public enum ExternalRouteType
	{
		System = 1,
		Service = 2,
		Personal = 3
	}

	public class CListItem
	{
		public int Id{get{return id;}}
		public String Description{get{return description;}}
		
		private readonly int id;
		internal String description;

		internal CListItem(int id, String description)
		{
			this.id = id;
			this.description = description;
		}

		public override String ToString()
		{
			return id + "\t" + description;
		}
	}
	
	public class CLogoutReason: CListItem
	{
		public const int PANIC_LOGOUT_ID = -99;
		
		internal CLogoutReason(int id, String description)
			:base(id, description)
		{}
	}

	public class CNotReadyReason: CListItem
	{
		internal CNotReadyReason(int id, String description)
			:base(id, description)
		{}
	}

    public class CCallRejectionReason : CListItem
    {
        internal CCallRejectionReason(int id, String description)
            : base(id, description)
        {}
    }

	public class CLogoutReasons: CList
	{
		private readonly CApp mpApp;

		internal CLogoutReasons(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CLogoutReason this[int index]
		{
			get{return (CLogoutReason)base[index];}
		}

		public new CLogoutReason GetByKey(object key)
		{
			return (CLogoutReason)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load all Logout Reasons
		/// </summary>
		internal void Load()
		{
			base.Clear();

			CLogoutReason oReason = new CLogoutReason(CLogoutReason.PANIC_LOGOUT_ID, "[Panic Logout]");
			base.Add(oReason.Id, oReason);				

			UDInfo oInfo = new UDInfo
			{
			    listType = (int) AgentInfoType.GET_STATUS_REASONS,
			    statusReasonsType = (int) StatusReasonType.LOG_OUT
			};

		    StatusReasons[] oItems = (StatusReasons[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

			foreach (StatusReasons t in oItems)
			{
			    oReason = new CLogoutReason(t.reasonid, t.description);
			    base.Add(oReason.Id, oReason);
			}

			//If we've only got "panic logout" on the list then also add "none".
			if(base.Count==1)
			{
				oReason = new CLogoutReason(0, "[None]");
				base.Add(oReason.Id, oReason);				
			}
		}
	}

	public class CNotReadyReasons: CList
	{
		private readonly CApp mpApp;

		internal CNotReadyReasons(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CNotReadyReason this[int index]
		{
			get{return (CNotReadyReason)base[index];}
		}

		public new CNotReadyReason GetByKey(object key)
		{
			return (CNotReadyReason)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load all NotReady Reasons
		/// </summary>
		internal void Load()
		{
			base.Clear();

			UDInfo oInfo = new UDInfo
			{
			    listType = (int) AgentInfoType.GET_STATUS_REASONS,
			    statusReasonsType = (int) StatusReasonType.NOT_READY
			};

		    StatusReasons[] oItems = (StatusReasons[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

			foreach (StatusReasons t in oItems)
			{
			    CNotReadyReason oReason = new CNotReadyReason(t.reasonid, t.description);
			    base.Add(oReason.Id, oReason);
			}

			//If we've got no reasons on the list then add "none".
			if(base.Count==0)
			{
				CNotReadyReason oReason = new CNotReadyReason(0, "[None]");
				base.Add(oReason.Id, oReason);				
			}
		}
	}

    public class CCallRejectionReasons : CList
    {
        private readonly CApp mpApp;

        internal CCallRejectionReasons(CApp pApp)
        {
            mpApp = pApp;
        }

        public new CCallRejectionReason this[int index]
        {
            get { return (CCallRejectionReason)base[index]; }
        }

        public new CCallRejectionReason GetByKey(object key)
        {
            return (CCallRejectionReason)base.GetByKey(key);
        }

        /// <summary>
        /// Load all Call Rejection Reasons
        /// </summary>
        internal void Load()
        {
            base.Clear();

            UDInfo oInfo = new UDInfo
            {
                listType = (int) AgentInfoType.GET_STATUS_REASONS,
                statusReasonsType = (int) StatusReasonType.CALL_REJECTION
            };

            StatusReasons[] oItems = (StatusReasons[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

            foreach (StatusReasons t in oItems)
            {
                CCallRejectionReason oReason = new CCallRejectionReason(t.reasonid, t.description);
                base.Add(oReason.Id, oReason);
            }

            //If we've got no reasons on the list then add "none".
            if (base.Count == 0)
            {
                CCallRejectionReason oReason = new CCallRejectionReason(0, "[None]");
                base.Add(oReason.Id, oReason);
            }
        }
    }

	public class CDisposition: CListItem 
	{
		public String Code{get{return code;}}
		public bool IsSale{get{return isSale;}}
		public bool IsCallback{get{return isCallback;}}
		public bool IsExclusion{get{return isExclusion;}}
		
		internal String code;
		internal bool isSale;
		internal bool isCallback;
		internal bool isExclusion;

		internal CDisposition(int id, String description, String code, bool isSale, bool isCallback, bool isExclusion)
		:base(id, description)
		{
			this.code = code;
			this.isSale = isSale;
			this.isExclusion = isExclusion;
			this.isCallback = isCallback;
		}

		public override String ToString()
		{
			return Id + "\t" + Code + "\t" + Description;
		}
	}

	public class CDispositions: CList
	{
		internal CDispositions()
		{
		}

		public new CDisposition this[int index]
		{
			get{return (CDisposition)base[index];}
		}

		public new CDisposition GetByKey(object key)
		{
			return (CDisposition)base.GetByKey(key);
		}

		internal new void Clear()
		{
			base.Clear();
		}
		
		internal void Add(object key, CDisposition value)
		{
			base.Add(key, value);
		}
	}

	public class CDispositionPlan
	{
		public int Id{get{return id;}}
		public String Description{get{return description;}}
		public CDispositions Dispositions{get{return dispositions;}}

		internal String description;
		
		private readonly int id;
		private readonly CDispositions dispositions;

		internal CDispositionPlan(int id, String description)
		{
			this.id = id;
			this.description = description;
			this.dispositions = new CDispositions();
		}
	}

	public class CDispositionPlans: CList
	{
		private readonly CApp mpApp;
		
		//Common disposition list
		private readonly CDispositions mpDispositions;

		internal CDispositionPlans(CApp pApp)
		{
			mpApp = pApp;
			mpDispositions = new CDispositions();
		}

		public new CDispositionPlan this[int index]
		{
			get{return (CDispositionPlan)base[index];}
		}

		public new CDispositionPlan GetByKey(object key)
		{
			return (CDispositionPlan)base.GetByKey(key);
		}
		
		/// <summary>
		/// Update the specified Disposition
		/// </summary>
		internal void LoadDisposition(int dispositionId)
		{
			UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_DISPOSTION, dispostionId = dispositionId};

		    Disposition oDisp = (Disposition)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);
			
			//If found in list then update it; otherwise, ignore request.
			if (mpDispositions.Contains(dispositionId))
			{
				CDisposition pDisposition = mpDispositions.GetByKey(dispositionId);
				pDisposition.code = oDisp.code;
				pDisposition.description = oDisp.description;
				pDisposition.isCallback = Convert.ToBoolean(oDisp.callbackf);
				pDisposition.isExclusion = Convert.ToBoolean(oDisp.exclusionf);
				pDisposition.isSale = Convert.ToBoolean(oDisp.salesf);
			}
		}

		/// <summary>
		/// Load/Update the specified Disposition Plan
		/// </summary>
		internal void LoadDispositionPlan(int serviceId)
		{
			UDInfo oInfo = new UDInfo {serviceId = serviceId, listType = (int) AgentInfoType.GET_DISPOSTION_PLAN};

		    DispositionPlan oPlan = (DispositionPlan)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);
			
			CDispositionPlan pDispPlan;

			//Update if already in list, add it otherwise
			if (base.Contains(oPlan.dispplanid))
			{
				pDispPlan = (CDispositionPlan)base.GetByKey(oPlan.dispplanid);
				pDispPlan.description = oPlan.desc;
				pDispPlan.Dispositions.Clear();
			}
			else
			{
				pDispPlan = new CDispositionPlan(oPlan.dispplanid, oPlan.desc);
				base.Add(pDispPlan.Id, pDispPlan);
			}

			//Load/refresh this plan's disposition list
			oInfo.listType = (int)AgentInfoType.GET_DISPOSITIONS;
			Dispositions[] oDisps = (Dispositions[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

            foreach (Dispositions oDisp in oDisps)
            {
                CDisposition pDisposition;

                //If disp already in common list, update it 
                if (mpDispositions.Contains(oDisp.dispid))
                {
                    pDisposition = mpDispositions.GetByKey(oDisp.dispid);
                    pDisposition.code = oDisp.code;
                    pDisposition.description = oDisp.description;
                    pDisposition.isCallback = Convert.ToBoolean(oDisp.callbackf);
                    pDisposition.isExclusion = Convert.ToBoolean(oDisp.exclusionf);
                    pDisposition.isSale = Convert.ToBoolean(oDisp.salesf);
                }
                //Otherwise, load it and add ref to common list 
                else
                {
                    pDisposition = new CDisposition(oDisp.dispid, oDisp.description, oDisp.code, Convert.ToBoolean(oDisp.salesf), Convert.ToBoolean(oDisp.callbackf), Convert.ToBoolean(oDisp.exclusionf));
                    mpDispositions.Add(pDisposition.Id, pDisposition);
                }

                //Add disp to this plan's list	
                pDispPlan.Dispositions.Add(pDisposition.Id, pDisposition);
            }
        }

        /// <summary>
        /// Load the specified Disposition Plan
        /// </summary>
        internal void LoadDispositionPlan(EPEventsWS.UDNewService oNewService)
        {
            CDispositionPlan pDispPlan;

            //Update if already in list, add it otherwise
            if (base.Contains(oNewService.dispositionPlan.dispplanid))
            {
                pDispPlan = (CDispositionPlan)base.GetByKey(oNewService.dispositionPlan.dispplanid);
                pDispPlan.description = oNewService.dispositionPlan.desc;
                pDispPlan.Dispositions.Clear();
            }
            else
            {
                pDispPlan = new CDispositionPlan(oNewService.dispositionPlan.dispplanid, oNewService.dispositionPlan.desc);
                base.Add(pDispPlan.Id, pDispPlan);
            }

            //Load/refresh this plan's disposition list
            foreach (EPEventsWS.UDNotifyDispositions oDisp in oNewService.dispositions)
            {
                CDisposition pDisposition;

                //If disp already in common list, update it 
                if (mpDispositions.Contains(oDisp.dispid))
                {
                    pDisposition = mpDispositions.GetByKey(oDisp.dispid);
                    pDisposition.code = oDisp.code;
                    pDisposition.description = oDisp.description;
                    pDisposition.isCallback = Convert.ToBoolean(oDisp.callbackf);
                    pDisposition.isExclusion = Convert.ToBoolean(oDisp.exclusionf);
                    pDisposition.isSale = Convert.ToBoolean(oDisp.salesf);
                }
                //Otherwise, load it and add ref to common list 
                else
                {
                    pDisposition = new CDisposition(oDisp.dispid, oDisp.description, oDisp.code, Convert.ToBoolean(oDisp.salesf), Convert.ToBoolean(oDisp.callbackf), Convert.ToBoolean(oDisp.exclusionf));
                    mpDispositions.Add(pDisposition.Id, pDisposition);
                }

                //Add disp to this plan's list	
                pDispPlan.Dispositions.Add(pDisposition.Id, pDisposition);
            }
        }
	}
	
	public class CExternalRoute: CListItem
	{
		public String PhoneNumber{get{return phoneNumber;}}
		public ExternalRouteType Type{get{return type;}}

		internal String phoneNumber;
		internal ExternalRouteType type;

		internal CExternalRoute(int id, String description, String phoneNumber, int type)
			:base(id, description)
		{
			this.type = (ExternalRouteType)type;
			this.phoneNumber = phoneNumber;
		}
	}
	
	public class CExternalRoutes: CList
	{
		private readonly CApp mpApp;

		internal CExternalRoutes(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CExternalRoute this[int index]
		{
			get{return (CExternalRoute)base[index];}
		}

		public new CExternalRoute GetByKey(object key)
		{
			return (CExternalRoute)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load all External Routes
		/// </summary>
		internal void Load()
		{
			base.Clear();

			UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_SPEED_DIALS};

		    Externals[] oItems = (Externals[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

			foreach (Externals e in oItems)
			{
			    CExternalRoute oExternalRoute = new CExternalRoute(e.externalrouteid, e.externalroutedesc, e.phonenum, e.externalroutetype);
			    base.Add(oExternalRoute.Id, oExternalRoute);
			}
		}
	
		/// <summary>
		/// Load/Update the specified External Route
		/// </summary>
		internal void Load(int externalRouteId)
		{
		    if (externalRouteId <= 0)
		    {
		        throw new ArgumentException("You must specify an externalRouteId", "externalRouteId");
		    }

		    UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_SPEED_DIAL, id = externalRouteId};

		    External oItem = (External)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

			//If external route is already in list, update it.
			//Otherwise, add it.
			CExternalRoute pExternalRoute;
			if (base.Contains(externalRouteId))
			{
				pExternalRoute = (CExternalRoute)base.GetByKey(externalRouteId);
				pExternalRoute.description = oItem.externalroutedesc;
				pExternalRoute.phoneNumber = oItem.phonenum;
				pExternalRoute.type = (ExternalRouteType)oItem.externalroutetype;
			}
			else
			{
				pExternalRoute = new CExternalRoute(oItem.externalrouteid, oItem.externalroutedesc, oItem.phonenum, oItem.externalroutetype); 
				base.Add(pExternalRoute.Id, pExternalRoute);
			}
		}
	}

	public class CUser
	{
		public String Id{get{return id;}}
		public String FirstName{get{return firstName;}}
		public String LastName{get{return lastName;}}

		private readonly String id;
		private readonly String firstName;
		private readonly String lastName;
		
		internal CUser(String id, String firstName, String lastName)
		{
			this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
		}
	}
	
	public class CAgents: CList
	{
		private readonly CApp mpApp;

		internal CAgents(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CUser this[int index]
		{
			get{return (CUser)base[index];}
		}

		public new CUser GetByKey(object key)
		{
			return (CUser)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load the specified agents
		/// </summary>
		internal void Load(int serviceId)
		{
			base.Clear();

			UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_XFER_TO_AGENT_LIST, serviceId = serviceId};

		    AgentXfer[] oItems = (AgentXfer[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

			foreach (AgentXfer t in oItems)
			{
			    CUser oAgent = new CUser(t.userid, t.userfname, t.userlname);
			    base.Add(oAgent.Id, oAgent);
			}
		}
	}

	public class CSupervisors: CList
	{
		private readonly CApp mpApp;

		internal CSupervisors(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CUser this[int index]
		{
			get{return (CUser)base[index];}
		}

		public new CUser GetByKey(object key)
		{
			return (CUser)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load the specified supervisors
		/// </summary>
		internal void Load(int serviceId)
		{
			base.Clear();

			UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_XFER_TO_DIRECTOR_LIST, serviceId = serviceId};
            DirectorXfer[] oItems = (DirectorXfer[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);
            foreach (DirectorXfer t in oItems)
			{
			    CUser oDirector = new CUser(t.userid, t.userfname, t.userlname);
			    base.Add(oDirector.Id, oDirector);
			}
		}
	}

    public class CServices : CList
    {
        private readonly CApp mpApp;

        internal CServices(CApp pApp)
        {
            mpApp = pApp;
        }

        public new CSimpleService this[int index]
        {
            get { return (CSimpleService)base[index]; }
        }

        public new CSimpleService GetByKey(object key)
        {
            return (CSimpleService)base.GetByKey(key);
        }

        /// <summary>
        /// Load list with all types of services available for consult/transfer
        /// </summary>
        internal void Load()
        {
            Load(0);
        }

        /// <summary>
        /// Load list with services of the specified type available for consult/transfer
        /// </summary>
        internal void Load(ServiceType serviceType)
        {
            base.Clear();

            UDInfo oInfo = new UDInfo
            {
                listType = (int) AgentInfoType.GET_XFER_TO_SERVICE_LIST,
                serviceType = (int) serviceType
            };

            ServiceXfer[] oItems = (ServiceXfer[])mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

            foreach (ServiceXfer t in oItems)
            {
                CSimpleService oService = new CSimpleService(t.serviceid, t.servicec , (ServiceType)t.servicetypeid);
                base.Add(oService.ServiceId, oService);
            }
        }
    }

	public enum ServiceType
	{
		ACD = 1,
		IVR = 3,
		AOD = 4,
		CHAT = 5,
		EMAIL = 6,
		AGD = 7,
		MANUAL = 11,
		CTI = 12
	};
	
	public enum DialMaskBits
	{
		Agent = 1,
		Services = 2,
		Supervisor = 4
	}

    public class CSimpleService
    {
        public int ServiceId { get { return serviceId; } }
        public String ServiceName { get { return serviceName; } }
        public ServiceType ServiceType { get { return serviceType; } }

        internal int serviceId;
        internal String serviceName;
        internal ServiceType serviceType;
    
    	internal CSimpleService()
		{
		}

      	internal CSimpleService(int serviceId, String serviceName, ServiceType serviceType)
		{
            this.serviceId = serviceId;
            this.serviceName = serviceName;
            this.serviceType = serviceType;
		}
    }
	
    public class CService: CSimpleService 
	{
		public String Application{get{return application;}}
		public bool Removed{get{return removed;}}
		public int DialMask{get{return dialMask;}}
		public bool AllowHold{get{return allowHold;}}
		public bool Allow3Way{get{return allow3Way;}}
		public bool AllowBlindXfer{get{return allowBlindXfer;}}
        public bool AllowWarmXfer { get { return allowWarmXfer; } }
        public bool AllowConference { get { return allowConference; } }
		public bool AllowConsult{get{return allowConsult;}}
		public bool AllowConsultHangup{get{return allowConsultHangup;}}
		public bool AllowRecord{get{return allowRecord;}}
		public bool AllowPlay{get{return allowPlay;}}
		public int TotalCalls{get{return totalCalls;}}
		public bool AllowDial{get{return allowDial;}}
		public bool AllowHangup{get{return allowHangup;}}
		public int WrapAlarmSecs{get{return wrapAlarmSecs;}}
		public bool RequireWrap{get{return requireWrap;}}
		public bool AllowNextCall{get{return allowNextCall;}}
		public bool ShowCallData{get{return showCallData;}}
		public int ShowCallDataSecs{get{return showCallDataSecs;}}
		public int CallDataDefId{get{return callDataDefId;}}
		public bool RequireDisposition{get{return requireDisposition;}}
		public CDispositionPlan DispositionPlan{get{return dispositionPlan;}}

		internal String application;
		internal bool removed;
		internal int dialMask;
		internal bool allowHold;
		internal bool allow3Way;
		internal bool allowBlindXfer;
        internal bool allowWarmXfer;
        internal bool allowConference;
		internal bool allowConsult;
		internal bool allowConsultHangup;
		internal bool allowRecord;
		internal bool allowPlay;
		internal int totalCalls;
		internal bool allowDial;
		internal bool allowHangup;
		internal int wrapAlarmSecs;
		internal bool requireWrap;
		internal bool allowNextCall;
		internal bool showCallData;
		internal int showCallDataSecs;
		internal int callDataDefId;
		internal bool requireDisposition;
		internal CDispositionPlan dispositionPlan;

		internal CService()
		{
		}

		public override String ToString()
		{
			return this.serviceId + "\t" + this.serviceName + "\t" + this.serviceType;
		}
	}

	public class CServiceAOD: CService
	{
		public bool AllowPreviewNumberChange{get{return allowPreviewNumberChange;}}
		public bool TimedPreview{get{return timedPreview;}}
		public int TimedPreviewSecs{get{return timedPreviewSecs;}}
		
		internal bool allowPreviewNumberChange;
		internal bool timedPreview;
		internal int timedPreviewSecs;
	
		internal CServiceAOD()
		{
		}
	}

	public class CServiceManual: CService
	{
		public bool ShowServiceListForManualDial{get{return showServiceListForManualDial;}}
		public bool RequireServiceForManualDial{get{return requireServiceForManualDial;}}
		public bool AllowSelfCallbacks{get{return allowSelfCallbacks;}}

		internal bool showServiceListForManualDial;
		internal bool requireServiceForManualDial;
		internal bool allowSelfCallbacks;

		internal CServiceManual()
		{
		}
	}

    public class CServiceChat : CService
    {
        public bool AllowChatDisconnect { get { return allowChatDisconnect; } }
        
        internal bool allowChatDisconnect;
        
        internal CServiceChat()
        {
        }
    }

	public class CAssignedServices: CList
	{
		private readonly CApp mpApp;

		internal CAssignedServices(CApp pApp)
		{
			mpApp = pApp;
		}

		public new CService this[int index]
		{
			get{return (CService)base[index];}
		}

		public new CService GetByKey(object key)
		{
			return (CService)base.GetByKey(key);
		}
		
		/// <summary>
		/// Load/Update the specified service's general info and settings
		/// </summary>
		internal void Load(int key)
		{
			//If already in collection, remove it
			if (base.Contains(key))
				base.RemoveByKey(key);

            Console.WriteLine("Loading service info for ServiceId <{0}>...\t[{1}]", key, this.GetType());

			UDInfo oInfo = new UDInfo {listType = (int) AgentInfoType.GET_SERVICE, serviceId = key};

		    Service oServiceInfo = (Service)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);
			
			CService oService;

			switch (oServiceInfo.servicetypeid)
			{
				case (int)ServiceType.AOD:
					oService = new CServiceAOD();
					break;

                case (int)ServiceType.CHAT:
                    oService = new CServiceChat();
                    break;
                
                default:
					oService = new CService();
					break;
			}
			
			oService.serviceId = oServiceInfo.serviceid;
			oService.serviceType = (ServiceType)oServiceInfo.servicetypeid;
			oService.serviceName = oServiceInfo.servicec;
			oService.dialMask = oServiceInfo.outgoingmask;

            Console.WriteLine("Disposition Plan of ServiceId <{0}>: {1} \t[{2}]", key, oServiceInfo.dispplanid, this.GetType());

			//If this service's disposition plan hasn't yet been loaded then do so
            if (oServiceInfo.dispplanid != 0 && !mpApp.DispositionPlans.Contains(oServiceInfo.dispplanid))
            {
                Console.WriteLine("Loading Disposition Plan <{0}>...\t[{1}]", oServiceInfo.dispplanid, this.GetType());
                mpApp.DispositionPlans.LoadDispositionPlan(oServiceInfo.dispplanid);
            }

			oService.dispositionPlan = mpApp.DispositionPlans.GetByKey(oServiceInfo.dispplanid);
			
			this.Load(oService);
		}

		/// <summary>
		/// Load/Update the specified service's settings
		/// </summary>
		internal void Load(CService oService)
		{
			//If already in collection, remove it
		    if (base.Contains(oService.serviceId))
		    {
		        base.RemoveByKey(oService.serviceId);
		    }

		    UDInfo oInfo = new UDInfo
			{
			    listType = (int) AgentInfoType.GET_SERVICE_SETTINGS,
			    serviceId = oService.serviceId,
			    serviceType = (int) oService.serviceType
			};

		    ServiceSettings oSvcSettings = (ServiceSettings)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

            oService.allowHangup = Convert.ToBoolean(oSvcSettings.btnhangupf);
            oService.allowDial = Convert.ToBoolean(oSvcSettings.btndialf);
            oService.allow3Way = Convert.ToBoolean(oSvcSettings.btnxferf);
            oService.allowConsult = Convert.ToBoolean(oSvcSettings.btnconsultf);
            oService.allowConsultHangup = Convert.ToBoolean(oSvcSettings.btnthreecusthangupf);

            //Hold is not valid for AGD (aka AWD or Workgroup) calls so disable it.
            oService.allowHold = oService.ServiceType != ServiceType.AGD && Convert.ToBoolean(oSvcSettings.btnholdf);
                    
            //AGD (aka AWD or Workgroup) services don't currently have a blind transfer setting in Director so default to enabled.
            oService.allowBlindXfer = oService.ServiceType == ServiceType.AGD || Convert.ToBoolean(oSvcSettings.btnblindxferf);
            
            oService.allowWarmXfer = Convert.ToBoolean(oSvcSettings.warmtransfer);
            oService.allowConference = Convert.ToBoolean(oSvcSettings.btnthreewayf);
            oService.allowRecord = Convert.ToBoolean(oSvcSettings.btnrecordf);
            oService.allowPlay = Convert.ToBoolean(oSvcSettings.btnplayf);
            oService.showCallData = Convert.ToBoolean(oSvcSettings.showcalldatadialogf);
            oService.showCallDataSecs = oSvcSettings.calldatadialogduration;
            oService.callDataDefId = oSvcSettings.calldatadefid;
            oService.wrapAlarmSecs = oSvcSettings.wrapwarningdelay;
            oService.requireDisposition = Convert.ToBoolean(oSvcSettings.reqdispositionf);
            oService.requireWrap = Convert.ToBoolean(oSvcSettings.reqwrapf);
            oService.allowNextCall = Convert.ToBoolean(oSvcSettings.btnnextcall);
            oService.application = oSvcSettings.appdesc;

            if (oService is CServiceAOD)
            {
                ((CServiceAOD)oService).allowPreviewNumberChange = Convert.ToBoolean(oSvcSettings.allowphonechangeinpreview);
                ((CServiceAOD)oService).timedPreview = Convert.ToBoolean(oSvcSettings.timedpreviewflag);
                ((CServiceAOD)oService).timedPreviewSecs = oSvcSettings.previewtimeoutinsecs;
            }
            else if (oService is CServiceManual)
            {
                ((CServiceManual)oService).allowSelfCallbacks = Convert.ToBoolean(oSvcSettings.cbselfcallbackflag);

                oInfo = new UDInfo {listType = (int) AgentInfoType.GET_AGENT_SETTINGS};
                AgentSetting oAgentSettings = (AgentSetting)mpApp.Portal.WSAgent.getInfo(mpApp.CurrentAgent.AgentArg, oInfo);

                ((CServiceManual)oService).showServiceListForManualDial = Convert.ToBoolean(oAgentSettings.displayServicesF);
                ((CServiceManual)oService).requireServiceForManualDial = Convert.ToBoolean(oAgentSettings.requireServiceF);
            }
            else if (oService is CServiceChat)
            {
                ((CServiceChat)oService).allowChatDisconnect = Convert.ToBoolean(oSvcSettings.chatdisconnectallowed);
            }
			
			base.Add(oService.serviceId, oService);
		}

        /// <summary>
        /// Load the specified service's general info and settings
        /// </summary>
        internal void Load(EPEventsWS.UDNewService oNewService)
        {
            //If already in collection, remove it
            if (base.Contains(oNewService.serviceID))
            {
                base.RemoveByKey(oNewService.serviceID);
            }

            Console.WriteLine("Loading service info for ServiceId <{0}>...\t[{1}]", oNewService.serviceID, this.GetType());

            CService oService;
            switch (oNewService.serviceInfo.servicetypeid)
            {
                case (int)ServiceType.AOD:
                    oService = new CServiceAOD();
                    break;
                
                case (int)ServiceType.CHAT:
                    oService = new CServiceChat();
                    break;

                default:
                    oService = new CService();
                    break;
            }

            oService.serviceId = oNewService.serviceID;
            oService.serviceType = (ServiceType)oNewService.serviceInfo.servicetypeid;
            oService.serviceName = oNewService.serviceInfo.servicec;
            oService.dialMask = oNewService.serviceInfo.outgoingmask;

            Console.WriteLine("Disposition Plan of ServiceId <{0}>: {1} \t[{2}]", oNewService.serviceID , oNewService.dispositionPlan.dispplanid, this.GetType());

            //If this service's disposition plan hasn't yet been loaded then do so
            if (oNewService.serviceInfo.dispplanid != 0 && !mpApp.DispositionPlans.Contains(oNewService.serviceInfo.dispplanid))
            {
                Console.WriteLine("Loading Disposition Plan <{0}>...\t[{1}]", oNewService.serviceInfo.dispplanid, this.GetType());
                mpApp.DispositionPlans.LoadDispositionPlan(oNewService);
            }
            
            oService.dispositionPlan = mpApp.DispositionPlans.GetByKey(oNewService.serviceInfo.dispplanid);
            
            oService.allowHangup = Convert.ToBoolean(oNewService.serviceSettings.btnhangupf);
            oService.allowDial = Convert.ToBoolean(oNewService.serviceSettings.btndialf);
            oService.allow3Way = Convert.ToBoolean(oNewService.serviceSettings.btnxferf);
            oService.allowConsult = Convert.ToBoolean(oNewService.serviceSettings.btnconsultf);
            oService.allowConsultHangup = Convert.ToBoolean(oNewService.serviceSettings.btnthreecusthangupf);

            //Hold is not valid for AGD (aka AWD or Workgroup) calls so disable it.
            oService.allowHold = oService.ServiceType != ServiceType.AGD && Convert.ToBoolean(oNewService.serviceSettings.btnholdf);

            //AGD (aka AWD or Workgroup) services don't currently have a blind transfer setting in Director so default to enabled.
            oService.allowBlindXfer = oService.ServiceType == ServiceType.AGD || Convert.ToBoolean(oNewService.serviceSettings.btnblindxferf);

            oService.allowWarmXfer = Convert.ToBoolean(oNewService.serviceSettings.warmtransfer);
            oService.allowConference = Convert.ToBoolean(oNewService.serviceSettings.btnthreewayf);
            oService.allowRecord = Convert.ToBoolean(oNewService.serviceSettings.btnrecordf);
            oService.allowPlay = Convert.ToBoolean(oNewService.serviceSettings.btnplayf);
            oService.showCallData = Convert.ToBoolean(oNewService.serviceSettings.showcalldatadialogf);
            oService.showCallDataSecs = oNewService.serviceSettings.calldatadialogduration;
            oService.callDataDefId = oNewService.serviceSettings.calldatadefid;
            oService.wrapAlarmSecs = oNewService.serviceSettings.wrapwarningdelay;
            oService.requireDisposition = Convert.ToBoolean(oNewService.serviceSettings.reqdispositionf);
            oService.requireWrap = Convert.ToBoolean(oNewService.serviceSettings.reqwrapf);
            oService.allowNextCall = Convert.ToBoolean(oNewService.serviceSettings.btnnextcall);
            oService.application = oNewService.serviceSettings.appdesc;

            if (oService is CServiceAOD)
            {
                ((CServiceAOD)oService).allowPreviewNumberChange = Convert.ToBoolean(oNewService.serviceSettings.allowphonechangeinpreview);
                ((CServiceAOD)oService).timedPreview = Convert.ToBoolean(oNewService.serviceSettings.timedpreviewflag);
                ((CServiceAOD)oService).timedPreviewSecs = oNewService.serviceSettings.previewtimeoutinsecs;
            }
            else if (oService is CServiceChat)
            {
                ((CServiceChat)oService).allowChatDisconnect = Convert.ToBoolean(oNewService.serviceSettings.chatdisconnectallowed);
            }

            base.Add(oService.serviceId, oService);
        }
	}
}
	