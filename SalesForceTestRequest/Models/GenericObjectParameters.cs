using SalesForceTestRequest.ServiceClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class GenericObjectParameters
    {
        public CallParameters Call { get; set; }
        public StateAgentId StateAgentId { get; set; }

        public GenericObjectParameters()
        {
            Call = new CallParameters();
        }
    }

    public enum StateAgentId
    {
        asLOGGING_IN = 0,
        asAUTHENTICATED = 1,          
        asIDLE = 2,
        asDIALING = 3,
        asDIALING_CONSULTATION = 4,   
        asRINGING = 5,                
        asINACTIVE = 6,               
        asPREVIEW = 7,
        asACTIVE = 8,
        asACTIVE_INTERNAL = 9,        
        asWRAP = 10,
        asHELD = 11,
        asWAITING = 12,                
        asLOGGED_OUT = 13,
        asNOT_READY = 14,
        asPARKED = 15,               
        asCONSULTING = 16,
        asCONFERENCE = 17,
        asCHATTING = 18
    }
}