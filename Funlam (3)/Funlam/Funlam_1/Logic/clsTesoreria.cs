using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Funlam_1.Models;

namespace Funlam_1.Logic
{
    public class clsTesoreria
    {

        dbfunlamEntities db = new dbfunlamEntities();
        public List<deuda> GetDeudasPorPersona(int idUsuario)

        {

            List<deuda> listdeudas = db.deudas.Where(x => x.id_usuario == idUsuario).ToList();

            if (listdeudas.Count > 0)
            {
                return listdeudas;
            }

            return null;
        }

        public List<descuento> GetDescuentosPorPersona(int idUsuario)
        {
            List<descuento> listdescuentos = db.descuentos.Where(x => x.id_usuarios == idUsuario).ToList();

            if (listdescuentos.Count > 0)
            {
                return listdescuentos;
            }

            return null;

        }


        public List<plan_financiacion> GetPlanFinanciacionPorPersona(int idUsuario)

        {


            List<plan_financiacion> listPlanFinanciacion = db.plan_financiacion.Where(x => x.id_usuarios == idUsuario).ToList();

            if (listPlanFinanciacion.Count > 0)
            {
                return listPlanFinanciacion;
            }

            return null;
        }

        public List<saldos_favor> GetSaldosPorPersona(int idUsuario)

        {

            List<saldos_favor> listsaldos = db.saldos_favor.Where(x => x.id_usuario == idUsuario).ToList();

            if (listsaldos.Count > 0)
            {
                return listsaldos;
            }

            return null;
        }


        public List<liquidacione> GetLiquidacionesPorPersona(int idUsuario)

        {

            List<liquidacione> listsaldos = db.liquidaciones.Where(x => x.id_usuario == idUsuario).ToList(); 

            if (listsaldos.Count > 0)
            {
                return listsaldos;
            }

            return null;
        }



        public detalles_usuario GetDetallesUsuarioLiquidacion(int idliquidacion)
        {


            detalles_usuario detalles = db.liquidaciones.Where(x => x.Id_liquidacion == idliquidacion).FirstOrDefault().Usuario.detalles_usuario.FirstOrDefault();

            return detalles;

        }



        public List<liquidacione> GetDetallesLiquidacion(int idliquidacion)
        {

                List<liquidacione> liquidacion = db.liquidaciones.Where(x =>  x.Id_liquidacion == idliquidacion).ToList();

            return liquidacion;


        }



        public List<recaudo> GetDetallesRecaudo(int idliquidacion)
        {

            List<recaudo> detallerecaudo = db.recaudoes.Where(x => x.id_liquidacion == idliquidacion).ToList();
            return detallerecaudo;
        }


    }
}