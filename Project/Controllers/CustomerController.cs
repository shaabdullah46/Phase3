using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class CustomerController : Controller
    {
        private CategoryEntities db = new CategoryEntities();

        // GET: Customer
        public ActionResult Index()
        {
            return View(db.CategoryTBs.ToList());
        }
        public ActionResult Logout()

        {
            Session.Abandon();
            return View();
        }




        // GET: Customer/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryTB categoryTB = db.CategoryTBs.Find(id);
            if (categoryTB == null)
            {
                return HttpNotFound();
            }
            return View(categoryTB);
        }

      
        // GET: Customer/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoryTB categoryTB = db.CategoryTBs.Find(id);
            if (categoryTB == null)
            {
                return HttpNotFound();
            }
            return View(categoryTB);
        }

        // POST: Customer/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoryTB categoryTB = db.CategoryTBs.Find(id);
            db.CategoryTBs.Remove(categoryTB);
            db.SaveChanges();
            return RedirectToAction("Logout");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
