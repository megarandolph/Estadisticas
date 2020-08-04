using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Inspinia_MVC5.Controllers
{

    public class AppViewsController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();
        public ActionResult Contacts()
        {
            return View();
        }
     
        public ActionResult Profile()
        {
            return View();
        }

        public ActionResult Contacts2()
        {
            return View();
        }

        public ActionResult Profile2()
        {
            return View();
        }
        
        public ActionResult Projects()
        {
            return View();
        }
       
        public ActionResult ProjectDetail()
        {
            return View();
        }

        public ActionResult ActivityStream()
        {
            return View();
        }
        
        public ActionResult FileManager()
        {
            return View();
        }
        
        public ActionResult Calendar()
        {
            return View();
        }
        
        public ActionResult FAQ()
        {
            return View();
        }
        
        public ActionResult Timeline()
        {
            return View();
        }
        
        public ActionResult PinBoard()
        {
            return View();
        }

        public ActionResult TeamsBoard()
        {
            return View();
        }

        public ActionResult SocialFeed()
        {
            return View();
        }

        public ActionResult Clients()
        {
            return View();
        }

        public ActionResult OutlookView()
        {
            return View();
        }

        public ActionResult IssueTracker()
        {
            return View();
        }

        public ActionResult Blog()
        {
            return View();
        }

        public ActionResult Article()
        {
            return View();
        }

        public ActionResult VoteList()
        {
            return View();
        }
        public JsonResult GetNombre()
        {
            var UsuarioId = Session["UsuarioId"];
            var data = db.Database.SqlQuery<Usuario>("Usp_Select_Nombre " + UsuarioId.ToString() + " ").ToList().Select(a => new SelectListItem
            {
                Text = a.Nombre,
                Value = a.UsuarioId.ToString()
            });

            return this.Json(data.OrderBy(a => a.Text), JsonRequestBehavior.AllowGet);
        }

    }
}