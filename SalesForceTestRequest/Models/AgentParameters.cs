using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class AgentParameters
    {
        public DialParameters Dial { get; set; }
        public UserParameters User { get; set; }
        public LogoutParameters Logout { get; set; }
        public UnavailableParameters Unavailable { get; set; }
        public CallDispositionParameters DispositionClass { get; set; }
        public TransferServicesParameters Transfer { get; set; }
    }
}