using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Funlam_1.Logic;
namespace Funlam_1.Controllers
{
    public class Registro_AcademicoController : Controller
    {
        
        clsRegistroAcademico objregistro;
        // GET: Registro_Academico
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Pre_Matricula() {
            objregistro = new clsRegistroAcademico();

            if (Session != null)
            {
                clsCalendario objcalendario = new clsCalendario();

                if (objcalendario.VerificarEvento(DateTime.Now, DateTime.Now, clsCalendario.TipoEvento.PRE_MATRICULA))
                {
                    clsUsuarios u = new clsUsuarios();

                    ViewBag.title = "PRE MATRICULA";
                    return View("Prematricula", objregistro.GetCursoPrematricula(u.ObtenerIdPrograma(int.Parse(Session["UserID"].ToString()))));

                }
                else
                {
                    ViewBag.title = "No hay evento de PRE MATRICULA para la fecha actual!";
                    return View("Prematricula");
                }

            }
            else
            {
                return RedirectToAction("login", "Usuarios");
            }
           
        }




        public ActionResult Matricula()

        {

            if (Session != null)
            {
                clsCalendario objcalendario = new clsCalendario();

                if (objcalendario.VerificarEvento(DateTime.Now, DateTime.Now, clsCalendario.TipoEvento.MATRICULA))
                {
                    clsRegistroAcademico objregistro = new clsRegistroAcademico();

                    ViewBag.title = "Registro Matricula";
                    return View("Registro_Matriculas");

                }
                else
                {
                    ViewBag.title = "MATRICULA";
                    return View("Matricula",objregistro.GetCursosMatriculas(int.Parse(Session["UserID"].ToString())));
                }

            }
            else
            {
                return RedirectToAction("login", "Usuarios");
            }
        }










    }
}