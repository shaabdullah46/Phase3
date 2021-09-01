using Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Project.Controllers
{
    public class HomeController : Controller
    {
        private CategoryEntities db = new CategoryEntities();
        public ActionResult Index()
        {
            return View(db.CategoryTBs.ToList());
        }

        public ActionResult About()
        {

            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
        public ActionResult Logout()

        {
            Session.Abandon();
            return View("Index");
        }



        // GET: Product/Details/5
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

        // POST: CategoryTBs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoryTB categoryTB = db.CategoryTBs.Find(id);
            db.CategoryTBs.Remove(categoryTB);
            db.SaveChanges();
            return RedirectToAction("Index");
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