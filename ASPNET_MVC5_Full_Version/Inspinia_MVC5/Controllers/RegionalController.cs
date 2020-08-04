using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Inspinia_MVC5;

namespace Inspinia_MVC5.Controllers
{
    public class RegionalController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();

        // GET: /Regional/
        public ActionResult Index()
        {
            return View(db.Regional.ToList());
        }

        // GET: /Regional/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regional regional = db.Regional.Find(id);
            if (regional == null)
            {
                return HttpNotFound();
            }
            return View(regional);
        }

        // GET: /Regional/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Regional/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="RegionalId,Descripcion")] Regional regional)
        {
            if (ModelState.IsValid)
            {
                db.Regional.Add(regional);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(regional);
        }

        // GET: /Regional/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regional regional = db.Regional.Find(id);
            if (regional == null)
            {
                return HttpNotFound();
            }
            return View(regional);
        }

        // POST: /Regional/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="RegionalId,Descripcion")] Regional regional)
        {
            if (ModelState.IsValid)
            {
                db.Entry(regional).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(regional);
        }

        // GET: /Regional/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regional regional = db.Regional.Find(id);
            if (regional == null)
            {
                return HttpNotFound();
            }
            return View(regional);
        }

        // POST: /Regional/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Regional regional = db.Regional.Find(id);
            db.Regional.Remove(regional);
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
