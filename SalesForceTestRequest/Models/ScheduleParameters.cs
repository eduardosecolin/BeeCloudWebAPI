using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class ScheduleParameters
    {
        public int Id_Disposition { get; set; }
        public string Description_Disposition { get; set; }
        public string Name_Customer { get; set; }
        public string AgentId { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime Date_Schedule { get; set; }
    }
}