using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Inspinia_MVC5.Models;

namespace Inspinia_MVC5.Controllers
{
    public class AccountController : Controller
    {
        private InfraccionesDBEntities db = new InfraccionesDBEntities();
      
        // GET: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Dashboard_1()
        {
            return View("Dashboard_1");
        }

        void connectionString() {
            string connStr = ConfigurationManager.ConnectionStrings["InfraccionesDBEntities"].ConnectionString;
        }

        [HttpPost]
        public ActionResult Verify(Usuario acc) {

            @Session["Admin"] = null;
            @Session["Digitador"] = null;
            @Session["Consulta"] = null;
            var data = db.Database.SqlQuery<Usuario>("select * from Usuario where Usuario1='" + acc.Usuario1 + "' and Contraseña='" + acc.Contraseña + "'").SingleOrDefault();

            if (data == null)
            {
                return View("Login");
            }
            else 
            {
                Session["UsuarioId"] = data.UsuarioId;
                Session["UserName"] = data.Nombre;
                Session["UserLastname"] = data.Apellido;


                if (data.idRol == 1) {
                    Session["Admin"] = true;
                }
                if (data.idRol == 2)
                {
                    Session["Digitador"] = true;
                }
                if (data.idRol == 3)
                {
                    Session["Consulta"] = true;
                }

                return View("Dashboard_1");
            }




            //connectionString();
            //con.Open();
            //com.Connection = con;
            //com.CommandText = "select * from Usuario where Usuario='"+acc.Usuario1+"' and Contraseña='"+acc.Contraseña+"'";
            //dr = com.ExecuteReader();
            //if (dr.Read())
            //{
            //    con.Close();
            //    return View("Create");
            //}
            //else
            //{
            //    con.Close();
            //    return View();
            //}
        }
    }
}