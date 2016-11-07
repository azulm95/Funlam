using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Funlam_1.Models;

namespace Funlam_1.Logic
{
    public class clsRegistroAcademico
    {
       
        dbfunlamEntities db = new dbfunlamEntities();


        public List<curso> GetCursoPrematricula(int idprograma) {
          

                List<curso> cursos = db.cursos.Include("materia.id_materia").Where(x => x.premarticula == "A" && x.materia.id_programa == idprograma).ToList();
                
            if (cursos != null) {
                return cursos;
            }
            else {

                return null;

            }

        }


        public List<detalle_persona_curso> GetCursosMatriculas(int idusuario)
        {

            List<detalle_persona_curso> cursos = db.detalle_persona_curso.Include("curso").Include("materia").Where(x => x.id_usuario == idusuario && x.estado == "A").ToList();

         
            if (cursos != null)
            {
                return cursos;
            } 
            else
            {

                return null;

            }

        }



    }
}