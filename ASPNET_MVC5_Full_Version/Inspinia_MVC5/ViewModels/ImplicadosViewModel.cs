using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Inspinia_MVC5.ViewModels
{
    public class ImplicadosViewModel
    {
        public int Registro_Evento_id { get; set; }
        public int Profesion_id { get; set; }
        public int Rango_id { get; set; }
        public int Condicion_implicado_id { get; set; }
        public int Nacionalidad { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Sexo { get; set; }
        public int Edad { get; set; }
    }
}