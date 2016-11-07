using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Funlam_1.Models;
using Funlam_1.Logic;

namespace Funlam_1.Controllers
{
    public class TesoreriaController : Controller
    {

        private dbfunlamEntities db = new dbfunlamEntities();
        clsTesoreria objTesoreria;

        // GET: Tesoreria
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Deudas() {

            if (Session != null)
            {

                
                List<deuda> listadeudas = objTesoreria.GetDeudasPorPersona(int.Parse(Session["UserID"].ToString()));
                if ( listadeudas != null)
                {
                    return View("Deudas", listadeudas);
                }

                return View("UserDashBoard","Usuarios");

            }
            else
            {

                return RedirectToAction("login","Usuarios");

            }
        }




        public ActionResult Descuentos()
        {

            if (Session != null)
            {

                objTesoreria = new clsTesoreria();
                List<descuento> listadescuentos = objTesoreria.GetDescuentosPorPersona(int.Parse(Session["UserID"].ToString()));
                if (listadescuentos != null)
                {
                    return View("Descuentos", listadescuentos);
                }

         
                return View("UserDashBoard", "Usuarios");

            }
            else
            {

                return RedirectToAction("login", "Usuarios");

            }
        }



        public ActionResult Plan_Financiacion()
        {

            if (Session != null)
            {

                objTesoreria = new clsTesoreria();
                List<plan_financiacion> listaplanfinanciacion = objTesoreria.GetPlanFinanciacionPorPersona(int.Parse(Session["UserID"].ToString()));
                if (listaplanfinanciacion != null)
                {
                    return View("Plan_Financiacion", listaplanfinanciacion);
                }

                return View("UserDashBoard", "Usuarios");

            }
            else
            {

                return RedirectToAction("login", "Usuarios");

            }
        }

        public ActionResult Saldos_a_Favor()
        {

            if (Session != null)
            {

                objTesoreria = new clsTesoreria();
                List<saldos_favor> listasaldos = objTesoreria.GetSaldosPorPersona(int.Parse(Session["UserID"].ToString()));
                if (listasaldos != null)
                {
                    return View("Plan_Financiacion", listasaldos);
                }

                return View("UserDashBoard", "Usuarios");

            }
            else
            {

                return RedirectToAction("login", "Usuarios");

            }
        }


        public ActionResult Liquidaciones()
        {

            if (Session != null)
            {

                objTesoreria = new clsTesoreria();
                List<liquidacione> listasaldos = objTesoreria.GetLiquidacionesPorPersona(int.Parse(Session["UserID"].ToString()));
                if (listasaldos != null)
                {
                    return View("Liquidaciones", listasaldos);
                }

                return View("UserDashBoard", "Usuarios");

            }
            else
            {

                return RedirectToAction("login", "Usuarios");

            }
        }


        public PartialViewResult GetDetallesUser(int id)
        {

            objTesoreria = new clsTesoreria();
            ViewBag.idLiquidacion = id;
            return PartialView("DetallesUser",objTesoreria.GetDetallesUsuarioLiquidacion(id));
        }


        public PartialViewResult GetDetallesLiquidacion(int id)
        {
            objTesoreria = new clsTesoreria();
            
            return PartialView("DetallesLiquidacion",objTesoreria.GetDetallesLiquidacion(id));

        }

        public PartialViewResult GetDetallesRecaudo(int id)
        {
            objTesoreria = new clsTesoreria();
            return PartialView("DetallesRecaudo",objTesoreria.GetDetallesRecaudo(id));
        }

    }
}