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
    public class Evento_CasoController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();

        // GET: /Evento_Caso/
        public ActionResult Index()
        {
            var evento_caso = db.Evento_Caso.Include(e => e.Evento).Include(e => e.Registro_Evento);
            return View(evento_caso.ToList());
        }

        // GET: /Evento_Caso/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Evento_Caso evento_Caso = db.Evento_Caso.Find(id);
            if (evento_Caso == null)
            {
                return HttpNotFound();
            }
            return View(evento_Caso);
        }

        // GET: /Evento_Caso/Create
        public ActionResult Create()
        {
            ViewBag.EventoId = new SelectList(db.Evento, "EventoId", "Descripcion");
            ViewBag.Registro_EventoId = new SelectList(db.Registro_Evento, "Registro_EventoId", "GeogCol2");
            return View();
        }

        // POST: /Evento_Caso/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Evento_CasoId,Registro_EventoId,EventoId")] Evento_Caso evento_Caso)
        {
            if (ModelState.IsValid)
            {
                db.Evento_Caso.Add(evento_Caso);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EventoId = new SelectList(db.Evento, "EventoId", "Descripcion", evento_Caso.EventoId);
            ViewBag.Registro_EventoId = new SelectList(db.Registro_Evento, "Registro_EventoId", "GeogCol2", evento_Caso.Registro_EventoId);
            return View(evento_Caso);
        }

        // GET: /Evento_Caso/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Evento_Caso evento_Caso = db.Evento_Caso.Find(id);
            if (evento_Caso == null)
            {
                return HttpNotFound();
            }
            ViewBag.EventoId = new SelectList(db.Evento, "EventoId", "Descripcion", evento_Caso.EventoId);
            ViewBag.Registro_EventoId = new SelectList(db.Registro_Evento, "Registro_EventoId", "GeogCol2", evento_Caso.Registro_EventoId);
            return View(evento_Caso);
        }

        // POST: /Evento_Caso/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Evento_CasoId,Registro_EventoId,EventoId")] Evento_Caso evento_Caso)
        {
            if (ModelState.IsValid)
            {
                db.Entry(evento_Caso).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EventoId = new SelectList(db.Evento, "EventoId", "Descripcion", evento_Caso.EventoId);
            ViewBag.Registro_EventoId = new SelectList(db.Registro_Evento, "Registro_EventoId", "GeogCol2", evento_Caso.Registro_EventoId);
            return View(evento_Caso);
        }

        // GET: /Evento_Caso/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Evento_Caso evento_Caso = db.Evento_Caso.Find(id);
            if (evento_Caso == null)
            {
                return HttpNotFound();
            }
            return View(evento_Caso);
        }

        // POST: /Evento_Caso/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Evento_Caso evento_Caso = db.Evento_Caso.Find(id);
            db.Evento_Caso.Remove(evento_Caso);
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
