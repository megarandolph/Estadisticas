using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Inspinia_MVC5.ViewModels
{
    public class RegistroEventoViewModelcs
    {
        public int Registro_EventoId { get; set; }
        public int RegionalId { get; set; }
        public int ComandanciaId { get; set; }
        public int ZonaId { get; set; }
        public int MunicipioId { get; set; }
        public int UsuarioId { get; set; }
        public int Tipo_InvolucradoId { get; set; }
        public decimal GeogCol1 { get; set; }
        public decimal GeogCol2 { get; set; }
        public System.DateTime FechaReporte { get; set; }
        public string Direccion { get; set; }
        public bool Fiscalizado { get; set; }
        public bool Retenido { get; set; }
        public string Comentario { get; set; }
    }


}