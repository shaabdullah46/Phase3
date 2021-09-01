using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    public class Login
    {
       
        [DisplayName("Name: ")]
        [Required(AllowEmptyStrings =false ,ErrorMessage = "This field is required")]
        public string UserName { get; set; }
        [DisplayName("Password: ")]
        [Required(AllowEmptyStrings = false,ErrorMessage = "This field is required")]
        [DataType(DataType.Password)]
        public string UserPassword { get; set; }
        
    }
}