using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class DialParameters
    {
        public string PhoneNumber { get; set; }
        public int ServiceId { get; set; }
        public string ServiceName { get; set; }
        public int CallID { get; set; }
        public int DisposionId { get; set; }
        public bool HoldState { get; set; }
        public string EventStatus { get; set; }
        public bool CallStatus { get; set; }
        public string Token { get; set; }
    }
}