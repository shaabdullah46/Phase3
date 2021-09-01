using Project.DB;
using Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project.Controllers
{
    public class AccountController : Controller
    {
        LoginDataBaseEntities loginEnt = new LoginDataBaseEntities();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
           
        {
            Login objLoginModel = new Login();
            return View(objLoginModel);
        }
        [HttpPost]
        public ActionResult Login(Login objLoginModel)
        {
            if (ModelState.IsValid)
            {
              if(loginEnt.Users.Where(m => m.UserName == objLoginModel.UserName && m.UserPassword == objLoginModel.UserPassword).FirstOrDefault() == null)
                {
                    ModelState.AddModelError("Error", "Invalid Name or Password");
                    return View();

                }
                else
                {
                    Session["Name"] = objLoginModel.UserName;
                  return  RedirectToAction("Index", "CategoryTBs");
                }
                
            }
            return View();
        }


    }
}