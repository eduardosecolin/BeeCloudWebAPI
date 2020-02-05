using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class CallParameters
    {
        public string PhoneNumber { get; set; }
        public string Name { get; set; }
        public int CallId { get; set; }
        public bool ShowScreenPop { get; set; }

        public CallParameters()
        {
            ShowScreenPop = false;
        }
    }
}