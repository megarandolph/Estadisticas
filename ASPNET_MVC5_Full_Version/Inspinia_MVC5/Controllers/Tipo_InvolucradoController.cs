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
    public class Tipo_InvolucradoController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();

        // GET: /Tipo_Involucrado/
        public ActionResult Index()
        {
            return View(db.Tipo_Involucrado.ToList());
        }

        // GET: /Tipo_Involucrado/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Involucrado tipo_Involucrado = db.Tipo_Involucrado.Find(id);
            if (tipo_Involucrado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Involucrado);
        }

        // GET: /Tipo_Involucrado/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Tipo_Involucrado/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Tipo_InvolucradoId,Descripcion")] Tipo_Involucrado tipo_Involucrado)
        {
            if (ModelState.IsValid)
            {
                db.Tipo_Involucrado.Add(tipo_Involucrado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipo_Involucrado);
        }

        // GET: /Tipo_Involucrado/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Involucrado tipo_Involucrado = db.Tipo_Involucrado.Find(id);
            if (tipo_Involucrado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Involucrado);
        }

        // POST: /Tipo_Involucrado/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Tipo_InvolucradoId,Descripcion")] Tipo_Involucrado tipo_Involucrado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipo_Involucrado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipo_Involucrado);
        }

        // GET: /Tipo_Involucrado/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tipo_Involucrado tipo_Involucrado = db.Tipo_Involucrado.Find(id);
            if (tipo_Involucrado == null)
            {
                return HttpNotFound();
            }
            return View(tipo_Involucrado);
        }

        // POST: /Tipo_Involucrado/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tipo_Involucrado tipo_Involucrado = db.Tipo_Involucrado.Find(id);
            db.Tipo_Involucrado.Remove(tipo_Involucrado);
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
