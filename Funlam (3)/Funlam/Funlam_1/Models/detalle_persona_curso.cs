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
    
    public partial class detalle_persona_curso
    {
        public int Id_persona_curso { get; set; }
        public int id_curso { get; set; }
        public int id_usuario { get; set; }
        public string estado { get; set; }
    
        public virtual curso curso { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
