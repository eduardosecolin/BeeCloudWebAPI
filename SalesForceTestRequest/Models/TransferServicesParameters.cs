using SalesForceTestRequest.ServiceClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class TransferServicesParameters
    {
        public int ServiceId { get; set; }
        public string ServiceName { get; set; }
		public ServiceType ServiceType { get; set; }
        public string PhoneNumber { get; set; }
    }
}