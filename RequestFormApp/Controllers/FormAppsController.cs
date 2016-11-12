using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RequestFormApp.Models;

namespace RequestFormApp.Controllers
{
    public class FormAppsController : Controller
    {
        private SQLEntities db = new SQLEntities();

        // GET: FormApps
        public ActionResult Index()
        {
            return View(db.FormApps.ToList());
        }

        // GET: FormApps/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormApp formApp = db.FormApps.Find(id);
            if (formApp == null)
            {
                return HttpNotFound();
            }
            return View(formApp);
        }

        // GET: FormApps/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: FormApps/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Title_id,Description,Client,ClientPriority,TargetDate,ProductArea")] FormApp formApp)
        {
            if (ModelState.IsValid)
            {
                db.FormApps.Add(formApp);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(formApp);
        }

        // GET: FormApps/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormApp formApp = db.FormApps.Find(id);
            if (formApp == null)
            {
                return HttpNotFound();
            }
            return View(formApp);
        }

        // POST: FormApps/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Title_id,Description,Client,ClientPriority,TargetDate,ProductArea")] FormApp formApp)
        {
            if (ModelState.IsValid)
            {
                db.Entry(formApp).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(formApp);
        }

        // GET: FormApps/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormApp formApp = db.FormApps.Find(id);
            if (formApp == null)
            {
                return HttpNotFound();
            }
            return View(formApp);
        }

        // POST: FormApps/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FormApp formApp = db.FormApps.Find(id);
            db.FormApps.Remove(formApp);
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
