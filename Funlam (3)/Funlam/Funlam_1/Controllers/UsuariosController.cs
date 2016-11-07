using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Funlam_1.Models;

namespace Funlam_1.Controllers
{
    public class UsuariosController : Controller
    {
        private dbfunlamEntities db = new dbfunlamEntities();

        // GET: Usuarios
        public ActionResult Index()
        {
            return View(db.Usuarios.ToList());
        }

        // GET: Usuarios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuario Usuarios = db.Usuarios.Find(id);
            if (Usuarios == null)
            {
                return HttpNotFound();
            }
            return View(Usuarios);
        }

        // GET: Usuarios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Usuarios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_usuario,Nom_Usuario,Clave,Rol")] Usuario Usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Usuarios.Add(Usuarios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(Usuarios);
        }

        // GET: Usuarios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuario Usuarios = db.Usuarios.Find(id);
            if (Usuarios == null)
            {
                return HttpNotFound();
            }
            return View(Usuarios);
        }

        // POST: Usuarios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id_usuario,Nom_Usuario,Clave,Rol")] Usuario Usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Usuarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(Usuarios);
        }

        // GET: Usuarios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usuario Usuarios = db.Usuarios.Find(id);
            if (Usuarios == null)
            {
                return HttpNotFound();
            }
            return View(Usuarios);
        } 

        // POST: Usuarios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Usuario Usuarios = db.Usuarios.Find(id);
            db.Usuarios.Remove(Usuarios);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Login()
        {
            return View("Login");
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogIn(Usuario usuario)
        {

            var obj = db.Usuarios.Where(a => a.Nom_Usuario == usuario.Nom_Usuario && a.Clave == usuario.Clave).FirstOrDefault();
            if (obj != null)
            {
                Session["UserID"] = obj.Id_usuarios.ToString();
                Session["UserName"] = obj.Nom_Usuario.ToString();
                Session["Clave"] = obj.Clave.ToString();
                Session["Rol"] = obj.Rol;
              
                return View("UserDashBoard");
            }

            return View("Login");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }







    }
}
