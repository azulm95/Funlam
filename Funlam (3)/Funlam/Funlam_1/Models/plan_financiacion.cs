//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Funlam_1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class plan_financiacion
    {
        public int id_plan_financiacion { get; set; }
        public string tipo_financiacion { get; set; }
        public string calculo { get; set; }
        public decimal valor { get; set; }
        public string estado { get; set; }
        public int id_usuarios { get; set; }
    
        public virtual Usuario Usuario { get; set; }
    }
}
