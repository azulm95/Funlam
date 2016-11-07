using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Funlam_1.Models;

namespace Funlam_1.Logic
{
    public class clsCalendario
    {
        private dbfunlamEntities db = new dbfunlamEntities();

       public enum TipoEvento
        {
            MATRICULA = 1,
            PRE_MATRICULA = 2,
            GRADOS = 3,
            SUFICIENCIA =4
        }

    





        public Boolean VerificarEvento(DateTime fechaI, DateTime fechaF,TipoEvento evento)

        {
            calendario cal = db.calendarios.Where(x => x.fecha_inicio <= fechaI && x.fecha_fin >= fechaF && x.tipo_evento == int.Parse(evento.ToString())).FirstOrDefault();

            if (cal != null)
            {
                return true;
            }

            return false;

        }



    }
}