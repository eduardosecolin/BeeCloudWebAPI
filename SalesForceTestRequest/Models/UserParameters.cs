using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class UserParameters
    {
        public string UserId { get; set; }
        public string Password { get; set; }
        public string Station { get; set; }
        public string Portal { get; set; }
        public string JsonProperty { get; set; }
        public string AgentId { get; set; }
    }
}