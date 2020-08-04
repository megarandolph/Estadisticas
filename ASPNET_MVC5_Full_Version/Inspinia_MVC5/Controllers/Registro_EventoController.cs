using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Inspinia_MVC5;
using Inspinia_MVC5.ViewModels;

namespace Inspinia_MVC5.Controllers
{
    public class Registro_EventoController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();
        private int Registro_EventoId;

        // GET: /Registro_Evento/
        public ActionResult Index()
        {
            var registro_evento = db.Registro_Evento.Include(r => r.Comandancia).Include(r => r.Municipio).Include(r => r.Regional).Include(r => r.Tipo_Involucrado).Include(r => r.Usuario).Include(r => r.Zona);
            return View(registro_evento.ToList());
        }

        // GET: /Registro_Evento/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Registro_Evento registro_Evento = db.Registro_Evento.Find(id);
            if (registro_Evento == null)
            {
                return HttpNotFound();
            }
            return View(registro_Evento);
        }


        public JsonResult GetImplicados(int Registro_Evento_id)
        {
            List<Implicado> lista = db.Implicado.Where(a => a.Registro_Evento_id == Registro_Evento_id).ToList();
            var Subimplicados = lista.Select(S => new {
                ProfesionId = S.Profesion_id,
                Profesion = S.Profesion.Descripcion,
                RangoId = S.Rango_id,
                Rango = S.Rango.Descripcion,
                Nombre = S.Nombres,
                Apellido = S.Apellidos,
                sexo = S.Sexo,
                NacionalidadId = S.Nacionalidad,
                Nacionalidad = S.Nacionalidad1.Descripcion,
                edad = S.Edad,
                CondicionId = S.Condicion_implicado_id,
                Condicion = S.Condicion_implicado.Descripcion

            });

            return this.Json(Subimplicados, JsonRequestBehavior.AllowGet);
        }

        // GET: /Registro_Evento/Create
        public ActionResult Create()
        {
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion");
            ViewBag.MunicipioId = new SelectList(db.Municipio, "MunicipioId", "Descripcion");
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion");
            ViewBag.Tipo_InvolucradoId = new SelectList(db.Tipo_Involucrado, "Tipo_InvolucradoId", "Descripcion");
            ViewBag.UsuarioId = new SelectList(db.Usuario, "UsuarioId", "Nombre");
            ViewBag.ZonaId = new SelectList(db.Zona, "ZonaId", "Descripcion");
            return View();
        }

        

        [HttpPost]
        public JsonResult Create(RegistroEventoViewModelcs Evento, List<Implicado> implicados)
        {

            var success = 0;

            try
            {

                if (ModelState.IsValid)
                {

                    Evento.UsuarioId = Convert.ToInt32(Session["UsuarioId"].ToString());

                    //var id_inserted = Evento.Registro_EventoId;
                    //success = id_inserted;

                    //var res = db.Database.SqlQuery<String>("Usp_Registra_Evento (" + Evento.RegionalId+ "," + Evento.ComandanciaId + "," + Evento.ZonaId + "," + Evento.MunicipioId + "," + Evento.UsuarioId + "," + Evento.Tipo_InvolucradoId + ",'" + Evento.GeogCol1 + "','" + Evento.GeogCol2 + "'," + Evento.FechaReporte + ",'" + Evento.Direccion.ToString() + "'," + Evento.Fiscalizado + "," + Evento.Retenido + ",'" + Evento.Comentario.ToString() + "')").SingleOrDefault();
                    var res = db.Database.SqlQuery<Int32>("Usp_Registra_Evento @RegionalId,@ComandanciaId,@ZonaId,@MunicipioId,@UsuarioId,@Tipo_InvolucradoId,@GeogCol1,@GeogCol2,@FechaReporte,@Direccion,@Fiscalizado,@Retenido,@Comentario",
                        new SqlParameter("@RegionalId", Evento.RegionalId),
                        new SqlParameter("@ComandanciaId", Evento.ComandanciaId),
                        new SqlParameter("@ZonaId", Evento.ZonaId),
                        new SqlParameter("@MunicipioId", Evento.MunicipioId),
                        new SqlParameter("@UsuarioId", Evento.UsuarioId),
                        new SqlParameter("@Tipo_InvolucradoId", Evento.Tipo_InvolucradoId),
                        new SqlParameter("@GeogCol1", Evento.GeogCol1),
                        new SqlParameter("@GeogCol2", Evento.GeogCol2),
                        new SqlParameter("@FechaReporte", Evento.FechaReporte),
                        new SqlParameter("@Direccion", Evento.Direccion),
                        new SqlParameter("@Fiscalizado", Evento.Fiscalizado),
                        new SqlParameter("@Retenido", Evento.Retenido),
                        new SqlParameter("@Comentario", Evento.Comentario)).SingleOrDefault();


                    int Registro_EventoId = res;

                    //if (implicados == null)
                    //{
                    //    implicados = new List<Implicado>();
                    //}

                    ////Loop and insert records.
                    //foreach (Implicado implicado in implicados)
                    //{

                    //    using (var context = new InfraccionesDBEntities())
                    //    {
                    //        Implicado Implicados = new Implicado()
                    //        {
                    //            Registro_Evento_id = Registro_EventoId,
                    //            Profesion_id = implicado.Profesion_id,
                    //            Rango_id = implicado.Rango_id,
                    //            Condicion_implicado_id = implicado.Condicion_implicado_id,
                    //            Nacionalidad = implicado.Nacionalidad,
                    //            Nombres = implicado.Nombres,
                    //            Apellidos = implicado.Apellidos,
                    //            Sexo = implicado.Sexo,
                    //            Edad = implicado.Edad
                    //        };

                    //        context.Implicado.Add(Implicados);
                    //        context.SaveChanges();
                    //    }

                    //}

                    success = 1;
                }
            }
            catch (SqlException ex)
            {
                var detalle_error = ex.Message;
                throw;
            }



            return Json(success);
        }
        [HttpPost]
        public JsonResult CreateVinculados(List<Implicado> implicados)
        {
            var success = 1;

            var res = db.Database.SqlQuery<Int32>("Usp_Registro_Evento_Id").FirstOrDefault();
            int Registro_EventoId = res;
            //Check for NULL.
            if (implicados == null)
            {
                implicados = new List<Implicado>();
            }

            //Loop and insert records.
            foreach (Implicado implicado in implicados)
            {

                using (var context = new InfraccionesDBEntities())
                {
                    Implicado Implicados = new Implicado() {
                        Registro_Evento_id = Registro_EventoId,
                        Profesion_id = implicado.Profesion_id,
                        Rango_id = implicado.Rango_id,
                        Condicion_implicado_id = implicado.Condicion_implicado_id,
                        Nacionalidad = implicado.Nacionalidad,
                        Nombres = implicado.Nombres,
                        Apellidos = implicado.Apellidos,
                        Sexo = implicado.Sexo,
                        Edad = implicado.Edad
                    };

                    context.Implicado.Add(Implicados);
                    context.SaveChanges();
                }

            }



            return Json(success);
             
        }

        [HttpPost]
        public JsonResult EditarVinculados(List<Implicado> implicados)
        {
            var success = 1;

            var Registro_EventoId_ = implicados.Select(a => a.Registro_Evento_id).First();


            //Check for NULL.
            if (implicados == null)
            {
                implicados = new List<Implicado>();
            }


            var res = db.Database.SqlQuery<Int32>("Usp_Delete_Implicado_edit @Registro_EventoId",
                new SqlParameter("@Registro_EventoId", Registro_EventoId_)).SingleOrDefault();


            //Loop and insert records.
            foreach (Implicado implicado in implicados)
            {

                using (var context = new InfraccionesDBEntities())
                {
                    Implicado Implicadoss = new Implicado()
                    {
                        Registro_Evento_id = Registro_EventoId_,
                        Profesion_id = implicado.Profesion_id,
                        Rango_id = implicado.Rango_id,
                        Condicion_implicado_id = implicado.Condicion_implicado_id,
                        Nacionalidad = implicado.Nacionalidad,
                        Nombres = implicado.Nombres,
                        Apellidos = implicado.Apellidos,
                        Sexo = implicado.Sexo,
                        Edad = implicado.Edad
                    };

                    context.Implicado.Add(Implicadoss);
                    context.SaveChanges();
                }

            }



            return Json(success);

        }

        // GET: /Registro_Evento/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Registro_Evento registro_Evento = db.Registro_Evento.Find(id);
            if (registro_Evento == null)
            {
                return HttpNotFound();
            }
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion", registro_Evento.ComandanciaId);
            ViewBag.MunicipioId = new SelectList(db.Municipio, "MunicipioId", "Descripcion", registro_Evento.MunicipioId);
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion", registro_Evento.RegionalId);
            ViewBag.Tipo_InvolucradoId = new SelectList(db.Tipo_Involucrado, "Tipo_InvolucradoId", "Descripcion", registro_Evento.Tipo_InvolucradoId);
            ViewBag.UsuarioId = new SelectList(db.Usuario, "UsuarioId", "Nombre", registro_Evento.UsuarioId);
            ViewBag.ZonaId = new SelectList(db.Zona, "ZonaId", "Descripcion", registro_Evento.ZonaId);
            return View(registro_Evento);
        }

        // POST: /Registro_Evento/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Registro_EventoId,RegionalId,ComandanciaId,ZonaId,MunicipioId,UsuarioId,Tipo_InvolucradoId,GeogCol1,GeogCol2,FechaReporte,Direccion,Fiscalizado,Retenido,Comentario,Numero_Caso")] Registro_Evento registro_Evento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(registro_Evento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ComandanciaId = new SelectList(db.Comandancia, "ComandanciaId", "Descripcion", registro_Evento.ComandanciaId);
            ViewBag.MunicipioId = new SelectList(db.Municipio, "MunicipioId", "Descripcion", registro_Evento.MunicipioId);
            ViewBag.RegionalId = new SelectList(db.Regional, "RegionalId", "Descripcion", registro_Evento.RegionalId);
            ViewBag.Tipo_InvolucradoId = new SelectList(db.Tipo_Involucrado, "Tipo_InvolucradoId", "Descripcion", registro_Evento.Tipo_InvolucradoId);
            ViewBag.UsuarioId = new SelectList(db.Usuario, "UsuarioId", "Nombre", registro_Evento.UsuarioId);
            ViewBag.ZonaId = new SelectList(db.Zona, "ZonaId", "Descripcion", registro_Evento.ZonaId);
            return View(registro_Evento);
        }
        [HttpPost]
        public JsonResult Editar(RegistroEventoViewModelcs Eventos)
         {
            int success = 0;
 
            try
            {

                    Eventos.UsuarioId = Convert.ToInt32(Session["UsuarioId"].ToString());
                    var res = db.Database.SqlQuery<Int32>("Usp_editar_Registro_Evento @Registro_EventoId,@RegionalId,@ComandanciaId,@ZonaId,@MunicipioId,@UsuarioId,@Tipo_InvolucradoId,@GeogCol1,@GeogCol2,@FechaReporte,@Direccion,@Fiscalizado,@Retenido,@Comentario",
                        new SqlParameter("@Registro_EventoId", Eventos.Registro_EventoId),
                        new SqlParameter("@RegionalId", Eventos.RegionalId),
                        new SqlParameter("@ComandanciaId", Eventos.ComandanciaId),
                        new SqlParameter("@ZonaId", Eventos.ZonaId),
                        new SqlParameter("@MunicipioId", Eventos.MunicipioId),
                        new SqlParameter("@UsuarioId", Eventos.UsuarioId),
                        new SqlParameter("@Tipo_InvolucradoId", Eventos.Tipo_InvolucradoId),
                        new SqlParameter("@GeogCol1", Eventos.GeogCol1),
                        new SqlParameter("@GeogCol2", Eventos.GeogCol2),
                        new SqlParameter("@FechaReporte", Eventos.FechaReporte),
                        new SqlParameter("@Direccion", Eventos.Direccion),
                        new SqlParameter("@Fiscalizado", Eventos.Fiscalizado),
                        new SqlParameter("@Retenido", Eventos.Retenido),
                        new SqlParameter("@Comentario", Eventos.Comentario)).SingleOrDefault();

                    success = res;
                
            }
            catch (SqlException ex)
            {
                var detalle_error = ex.Message;
                throw;
            }
            return Json(success, JsonRequestBehavior.AllowGet);
        
        }

        [HttpPost]
        public JsonResult DeleteImpli(Implicado implicadox)
        {
            var success = 0;
            //foreach (Implicado implicado in implicados)
            //{
            //    using (var context = new InfraccionesDBEntities())
            //    {
            //        Implicado Implicados = new Implicado()
            //        {
            //            Registro_Evento_id = null,
            //            Profesion_id = implicado.Profesion_id,
            //            Rango_id = implicado.Rango_id,
            //            Condicion_implicado_id = implicado.Condicion_implicado_id,
            //            Nacionalidad = implicado.Nacionalidad,
            //            Nombres = implicado.Nombres,
            //            Apellidos = implicado.Apellidos,
            //            Sexo = implicado.Sexo,
            //            Edad = implicado.Edad
            //        };

            //        context.Implicado.Remove(Implicados);
            //        context.SaveChanges();
            //    }

            //}
            try
            {

                var res = db.Database.SqlQuery<Int32>("Usp_Delete_Implicado @Profesion_id,@Rango_id,@Condicion_implicado_id,@Nacionalidad,@Nombres,@Apellidos,@Sexo,@Edad",
                            new SqlParameter("@Profesion_id", implicadox.Profesion_id),
                            new SqlParameter("@Rango_id", implicadox.Rango_id),
                            new SqlParameter("@Condicion_implicado_id", implicadox.Condicion_implicado_id),
                            new SqlParameter("@Nacionalidad", implicadox.Nacionalidad),
                            new SqlParameter("@Nombres", implicadox.Nombres),
                            new SqlParameter("@Apellidos", implicadox.Apellidos),
                            new SqlParameter("@Sexo", implicadox.Sexo),
                            new SqlParameter("@Edad", implicadox.Edad)).SingleOrDefault();
                success = res;
            }
            catch (SqlException ex)
            {
                var detalle_error = ex.Message;
                throw;
            }
            return Json(success, JsonRequestBehavior.AllowGet);
        }

        // GET: /Registro_Evento/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Registro_Evento registro_Evento = db.Registro_Evento.Find(id);
            if (registro_Evento == null)
            {
                return HttpNotFound();
            }
            return View(registro_Evento);
        }

        // POST: /Registro_Evento/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {


            Registro_Evento registro_Evento = db.Registro_Evento.Find(id);
            db.Registro_Evento.Remove(registro_Evento);
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
        public JsonResult GetRegionales()
        {
            var UsuarioId = Session["UsuarioId"];
            var data = db.Database.SqlQuery<Regional>("Usp_Select_Regional "+ UsuarioId.ToString() + " ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.RegionalId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetComandancia()
        {
            var UsuarioId = Session["UsuarioId"];
            var data = db.Database.SqlQuery<Comandancia>("Usp_Select_Comandancia "+ UsuarioId.ToString() + " ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.ComandanciaId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetZona()
        {
            var UsuarioId = Session["UsuarioId"];
            var data = db.Database.SqlQuery<Zona>("Usp_Select_Zona "+ UsuarioId.ToString() + " ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.ZonaId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetMunicipios()
        {
            var UsuarioId = Session["UsuarioId"];
            var data = db.Database.SqlQuery<Municipio>("Usp_Select_Municipio "+ UsuarioId.ToString() + " ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.MunicipioId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetTipoInvolucrado()
        {
            var data = db.Database.SqlQuery<Tipo_Involucrado>("Usp_Select_TipoInvolucrado " ).ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.Tipo_InvolucradoId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetCondicion()
        {
            var data = db.Database.SqlQuery<Condicion_implicado>("Usp_Select_Condicion ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.Id.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetRango()
        {
            var data = db.Database.SqlQuery<Rango>("Usp_Select_Rango ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.Rango_id.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetNacionalidad()
        {
            var data = db.Database.SqlQuery<Nacionalidad>("Usp_Select_Nacionalidad ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.Nacionalidad_id.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetProfesion()
        {
            var data = db.Database.SqlQuery<Profesion>("Usp_Select_Profesion ").ToList().Select(a => new SelectListItem
            {
                Text = a.Descripcion,
                Value = a.Profesion_id.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }


    }
}
