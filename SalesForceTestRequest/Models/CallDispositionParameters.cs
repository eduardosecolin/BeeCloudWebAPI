﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class CallDispositionParameters
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Code { get; set; }
        public DateTime Date { get; set; }
    }
}