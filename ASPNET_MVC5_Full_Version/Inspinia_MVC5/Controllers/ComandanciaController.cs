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
    public class ComandanciaController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();

        // GET: /Comandancia/
        public ActionResult Index()
        {
            var comandancia = db.Comandancia.Include(c => c.Provincia).Include(c => c.Regional);
            return View(comandancia.ToList());
        }

        // GET: /Comandancia/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Comandancia comandancia = db.Comandancia.Find(id);
            if (comandancia == null)
            {
                return HttpNotFound();
            }
            return View(comandancia);
        }

        // GET: /Comandancia/Create
        public ActionResult Create()
        {
            ViewBag.ProvinciaId = new SelectList(db.Provincia, "ProvinciaId", "Descripcion");
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion");
            return View();
        }

        // POST: /Comandancia/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="ComandanciaId,RegionalId,ProvinciaId,Descripcion")] Comandancia comandancia)
        {
            if (ModelState.IsValid)
            {
                db.Comandancia.Add(comandancia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProvinciaId = new SelectList(db.Provincia, "ProvinciaId", "Descripcion", comandancia.ProvinciaId);
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion", comandancia.RegionalId);
            return View(comandancia);
        }

        // GET: /Comandancia/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Comandancia comandancia = db.Comandancia.Find(id);
            if (comandancia == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProvinciaId = new SelectList(db.Provincia, "ProvinciaId", "Descripcion", comandancia.ProvinciaId);
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion", comandancia.RegionalId);
            return View(comandancia);
        }

        // POST: /Comandancia/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="ComandanciaId,RegionalId,ProvinciaId,Descripcion")] Comandancia comandancia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(comandancia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProvinciaId = new SelectList(db.Provincia, "ProvinciaId", "Descripcion", comandancia.ProvinciaId);
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion", comandancia.RegionalId);
            return View(comandancia);
        }

        // GET: /Comandancia/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Comandancia comandancia = db.Comandancia.Find(id);
            if (comandancia == null)
            {
                return HttpNotFound();
            }
            return View(comandancia);
        }

        // POST: /Comandancia/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Comandancia comandancia = db.Comandancia.Find(id);
            db.Comandancia.Remove(comandancia);
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
