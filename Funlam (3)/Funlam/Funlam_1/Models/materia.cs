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
    
    public partial class materia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public materia()
        {
            this.cursos = new HashSet<curso>();
        }
    
        public int Id_materia { get; set; }
        public string nombre_materia { get; set; }
        public int creditos { get; set; }
        public int id_programa { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<curso> cursos { get; set; }
        public virtual programa programa { get; set; }
    }
}
