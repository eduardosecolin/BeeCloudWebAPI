using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models.ResourcesStatic
{
    public class AgentManager
    {
        public List<InfoAgent> InfoAgents { get; set; }

        public AgentManager()
        {
            InfoAgents = new List<InfoAgent>();
        }
    }

    public class InfoAgent
    {
        public string NameAgent { get; set; }
        public int CurrentState { get; set; }
        public DateTime DateLastLogin { get; set; }
        public DateTime DateState { get; set; }
    }
}