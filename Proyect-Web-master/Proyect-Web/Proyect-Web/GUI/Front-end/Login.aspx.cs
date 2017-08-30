using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using DAO;
using Servicio;


namespace Proyect_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, AuthenticateEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, AuthenticateEventArgs e)
        {
            bool Acceso = false;
            UsuarioBO bo = new UsuarioBO();
            UsuarioDAO dao = new UsuarioDAO();
            RecuperarDatos R = new RecuperarDatos();
            try
            {
                bo.Usuario = Login1.UserName;
                bo.Contraseña = Login1.Password;
                int id = dao.VerificarLog(bo);
                int tipo = dao.ChekarTipo(bo);
                bo.IDUsuario = id;
                string Usuario = R.Usuario(bo);
                string Contraseña = R.Contraseña(bo);
                string Nombre = R.Nombre(bo);
                string SitioWeb = R.SitioWeb(bo);
                string Correo = R.Correo(bo);
                string SegCorreo = R.SegundoCorreo(bo);
                string Correo3 = R.Correo3(bo);
                string Telefono = R.Telefono(bo);
                string Foto = dao.Imagen(bo);
                bo.Fotografia = Foto;

                if (id != 0)
                {

                    Acceso = true;
                }
                else
                {
                    Response.Write("<script language=javascript>alert('No te has registrado');</script>");
                    Response.Redirect("Login.aspx");
                }
                e.Authenticated = Acceso;
                if (Acceso)
                {
                    Session["IDUsuario"] = id;
                    Session["Nombre"] = Nombre;
                    Session["Telefono"] = Telefono;
                    Session["Correo"] = Correo;
                    Session["SitioWeb"] = SitioWeb;
                    Session["Correo2"] = SegCorreo;
                    Session["Correo3"] = Correo3;
                    Session["Usuario"] = Usuario;
                    Session["Contraseña"] = Contraseña;
                    Session["Fotografia"] = Foto;
                    Session["IDTipoUsuario"] = tipo;
                    if (tipo == 1)
                    {
                        Response.Redirect("");
                    }
                    else
                    {
                        if (tipo == 2)
                        {

                            Response.Redirect("~/GUI/Back-end/HomeOrg.aspx");
                        }

                    }
                }
            }
            catch (Exception)
            {
                Response.Write("<script language=javascript>alert('Verifica tus datos');</script>");
                throw;
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RecuperarDatos r = new RecuperarDatos();
            UsuarioBO bo = new UsuarioBO();
            bo.CorreoConsulta = txtEmail.Text;
            string Consulta =  r.ContraseñaInicio(bo);
            Response.Write("<script language=javascript>alert('Tu contraseña es: "+Consulta+"');</script>");

        }
    }
}