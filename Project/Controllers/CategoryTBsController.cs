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
    public class CategoryTBsController : Controller
    {
        private CategoryEntities db = new CategoryEntities();

        // GET: CategoryTBs
        public ActionResult Index()
        {
            return View(db.CategoryTBs.ToList());
        }

        // GET: CategoryTBs/Details/5
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

        // GET: CategoryTBs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CategoryTBs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CategoryID,name,company,price")] CategoryTB categoryTB)
        {
            if (ModelState.IsValid)
            {
                db.CategoryTBs.Add(categoryTB);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(categoryTB);
        }

        // GET: CategoryTBs/Edit/5
        public ActionResult Edit(int? id)
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

        // POST: CategoryTBs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CategoryID,name,company,price")] CategoryTB categoryTB)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categoryTB).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(categoryTB);
        }

        // GET: CategoryTBs/Delete/5
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
