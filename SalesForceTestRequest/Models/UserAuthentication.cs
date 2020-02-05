using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalesForceTestRequest.Models
{
    public class UserAuthentication
    {
        public string UserName  { get; set; }
        public string Password { get; set; }
        public string Client_id { get; set; }
        public string Client_secret { get; set; }
        public string Grant_type { get; set; }
        public string UserNameValidate { get; set; }
        public string PasswordValidate { get; set; }
    }
}