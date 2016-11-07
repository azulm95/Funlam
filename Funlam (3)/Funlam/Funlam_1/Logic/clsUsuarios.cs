using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Funlam_1.Models;
namespace Funlam_1.Logic
{
    public class clsUsuarios
    {

        dbfunlamEntities db = new dbfunlamEntities();




        public int ObtenerIdPrograma(int idusuario)

        {

            detalles_usuario u = db.detalles_usuario.Where(x => x.id_usuario == idusuario).FirstOrDefault();

            int idPrograma = u.id_programa;



            return idPrograma;
        }


        public detalles_usuario GetDetallesUsario(int idUsuario)
        {

            return db.detalles_usuario.Where(x => x.id_usuario == idUsuario).FirstOrDefault();

        }



    }
}