//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Inspinia_MVC5
{
    using System;
    using System.Collections.Generic;
    
    public partial class Evento_Caso
    {
        public int Evento_CasoId { get; set; }
        public Nullable<int> Registro_EventoId { get; set; }
        public Nullable<int> EventoId { get; set; }
    
        public virtual Evento Evento { get; set; }
        public virtual Registro_Evento Registro_Evento { get; set; }
    }
}
