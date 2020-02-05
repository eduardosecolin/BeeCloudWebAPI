using SalesForceTestRequest.ServiceClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models.ResourcesStatic
{
    public class MainObject
    {
        public static Dictionary<string, CApp> MainList = new Dictionary<string, CApp>();
        public static Dictionary<string, GenericObjectParameters> MainEventList = new Dictionary<string, GenericObjectParameters>();
    }
}