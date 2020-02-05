using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class BeePhonePostParameters
    {
        public int CallID { get; set; }
        public bool CallStatus { get; set; }
        public string EventStatus { get; set; }
    }
}