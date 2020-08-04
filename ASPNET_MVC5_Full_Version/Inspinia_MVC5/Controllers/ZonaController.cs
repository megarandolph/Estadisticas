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
    public class ZonaController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();

        // GET: /Zona/
        public ActionResult Index()
        {
            var zona = db.Zona.Include(z => z.Comandancia);
            return View(zona.ToList());
        }

        // GET: /Zona/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zona zona = db.Zona.Find(id);
            if (zona == null)
            {
                return HttpNotFound();
            }
            return View(zona);
        }

        // GET: /Zona/Create
        public ActionResult Create()
        {
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion");
            return View();
        }

        // POST: /Zona/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="ZonaId,ComandanciaId,Descripcion")] Zona zona)
        {
            if (ModelState.IsValid)
            {
                db.Zona.Add(zona);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion", zona.ComandanciaId);
            return View(zona);
        }

        // GET: /Zona/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zona zona = db.Zona.Find(id);
            if (zona == null)
            {
                return HttpNotFound();
            }
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion", zona.ComandanciaId);
            return View(zona);
        }

        // POST: /Zona/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="ZonaId,ComandanciaId,Descripcion")] Zona zona)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zona).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion", zona.ComandanciaId);
            return View(zona);
        }

        // GET: /Zona/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zona zona = db.Zona.Find(id);
            if (zona == null)
            {
                return HttpNotFound();
            }
            return View(zona);
        }

        // POST: /Zona/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Zona zona = db.Zona.Find(id);
            db.Zona.Remove(zona);
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
