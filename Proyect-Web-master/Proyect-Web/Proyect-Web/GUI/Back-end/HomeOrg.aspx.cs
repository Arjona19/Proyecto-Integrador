using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Servicio;
using DAO;
using System.Data;

namespace Proyect_Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConexionDAO con = new ConexionDAO();
        UsuarioDAO obj = new UsuarioDAO();
        ActualizarDatos R = new ActualizarDatos();
        UsuarioBO bo = new UsuarioBO();
        UsuariosCTRL servicio = new UsuariosCTRL();
        string NombreImagen;
        string Usuario;
        string Contraseña;
        string Nombre;
        string SitioWeb;
        string Correo;
        string SegCorreo;
        string Correo3;
        string Telefono;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Foto = Session["Fotografia"].ToString();
          
                if (Foto == "")
                {
                    LblContr.Text = "No asignado";
                    LblCorreo.Text = "No asignado";
                    LblCorreo2.Text = "No asignado";
                    LblNombre.Text = "No asignado";
                    LblSitio.Text = "No asignado";
                    LblTel.Text = "No asignado";
                    LblUs.Text = "No asignado";
                    

                    Image1.ImageUrl = "~/Img/fr-05.jpg";
                    Perfil1.ImageUrl = "~/Img/fr-05.jpg";
            }
            else
            {
            LblContr.Text = Session["Contraseña"].ToString();
            LblCorreo.Text = Session["Correo"].ToString();
            LblCorreo2.Text = Session["Correo2"].ToString();
            LblNombre.Text = Session["Nombre"].ToString();
            LblSitio.Text = Session["SitioWeb"].ToString();
            LblTel.Text = Session["Telefono"].ToString();
            LblUs.Text = Session["Usuario"].ToString();
            Perfil1.ImageUrl = "~/Img/" + Session["Fotografia"];
            Image1.ImageUrl = "~/Img/" + Session["Fotografia"];
            }
                //if (fupfoto.HasFile)
                //{
                //    NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
                //    fupfoto.PostedFile.SaveAs(Server.MapPath("~/Img/") + NombreImagen);
                //    Image1.ImageUrl = "~/Img/" + NombreImagen;
                //}
            
            
            //Response.Write("<script language=javascript>alert('Bienvenido, Si lo desea puede actualizar sus datos');</script>");

        }
        public void CerrarSession(Object sender, EventArgs e)
        {
            Session.Remove("IDUsuario");
            Response.Redirect("../Front-end/Registro.aspx");
        }
        public int Modificar()
        {
            UsuarioBO datos = new UsuarioBO();
            int Res;
            try
            {
                datos.IDUsuario = int.Parse(Session["IDUsuario"].ToString());

                datos.Nombre = txtNombreUsuario.Text;
                datos.Correo = txtCorreo.Text;
                datos.Correo1 = txt2Correo.Text;
                datos.Correo2 = txt3Correo.Text;

                datos.Telefono = txtTelefono.Text;
                datos.SitioWeb = txtSitioWeb.Text;
                //datos.Usuario = txtUsuario.Text;
                //datos.Contraseña = txtPass.Text;
                //datos.IDCiudad = 45;

                string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
                if (fupfoto.HasFile)
                {
                    fupfoto.PostedFile.SaveAs(Server.MapPath("~/img/") + NombreImagen);
                    Image1.ImageUrl = "~/img/" + fupfoto.PostedFile.FileName;

                }
                //almacenar en la BD
                datos.Fotografia = "/" + NombreImagen;



                ////guardar foto
                //string NombreImagen = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + NombreImagen);
                //Image1.ImageUrl = "~/img/" + FileUpload1.PostedFile.FileName;
                ////almacenar en la BD
                //datos.Fotografia = "/" + NombreImagen;

               
               
                //if ( == 1)
                //{
                //    Response.Write("  <script language=javascript>swal('Todo bien', 'Contenido del mensaje', 'success');</ script > ");
                //}
                //else
                //{
                //    Response.Write("  <script language=javascript>swal('Algo salio mal', 'Contenido del mensaje', 'success');</ script > ");
                //}
                //Actualizar();

            }
            catch (Exception)
            {


            }
            Res =servicio.ActualizarR(datos);
            return Res;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            UsuarioBO datos = new UsuarioBO();
            try
            {
                datos.IDUsuario = int.Parse(Session["IDUsuario"].ToString());

                datos.Nombre = txtNombreUsuario.Text;
                datos.Correo = txtCorreo.Text;
                datos.Correo1 = txt2Correo.Text;
                datos.Correo2 = txt3Correo.Text;
               
                datos.Telefono = txtTelefono.Text;
                datos.SitioWeb = txtSitioWeb.Text;
                //datos.Usuario = txtUsuario.Text;
                //datos.Contraseña = txtPass.Text;
                //datos.IDCiudad = 45;

                string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
                if (fupfoto.HasFile)
                {
                    fupfoto.PostedFile.SaveAs(Server.MapPath("~/Img/") + NombreImagen);
                    Image1.ImageUrl = "~/Img/" + NombreImagen;

                }
                //almacenar en la BD
                datos.Fotografia = "/" + NombreImagen;


                ////guardar foto
                //string NombreImagen = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + NombreImagen);
                //Image1.ImageUrl = "~/img/" + FileUpload1.PostedFile.FileName;
                ////almacenar en la BD
                //datos.Fotografia = "/" + NombreImagen;
                
               ;
                if (  servicio.ActualizarR(datos)== 1)
                {

                    Response.Write("< script language=javascript> swal('Datos Actualizados', 'Contenido del mensaje', 'success')</ script >");

                }
                else
                {
                    Response.Write("  <script language=javascript>swal('Algo salio mal', 'Contenido del mensaje', 'success');</ script > ");
                }
                //Actualizar();

            }
            catch (Exception)
            {


            }

        }
        public void Ver(object sernder, EventArgs e)
        {
            Response.Write("< script language=javascript> swal('Algo salio mal', 'Contenido del mensaje', 'success')</ script >");
        }
        public void Actualizar()
        {
            Usuario = R.Usuario(bo);
            Contraseña = R.Contraseña(bo);
            Nombre = R.Nombre(bo);
            SitioWeb = R.SitioWeb(bo);
            Correo = R.Correo(bo);
            SegCorreo = R.SegundoCorreo(bo);
            Correo3 = R.Correo3(bo);
            Telefono = R.Telefono(bo);
            
        }
        protected void Limpiar(object sender, EventArgs e)
        {
            txtCorreo.Text = "";
            txt2Correo.Text = "";
            txt3Correo.Text = "";
            txtTelefono.Text = "";

            txtNombreUsuario.Text = "";

            txtSitioWeb.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            UsuarioBO datos = new UsuarioBO();
            datos.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            datos.Usuario = TextBox1.Text;
            datos.Contraseña = TextBox2.Text;

            if (servicio.ActualizarSession(datos) != 0)
            {
                Response.Write("<script language=javascript>alert('Sesion Actualizada');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo Salio Mal');</script>");
            }
        }



        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Write("<script language=javascript>alert('Algo Salio Mal');</script>");
        //    //UsuarioBO datos = new UsuarioBO();

        //    //datos.Usuario = txtUsuario.Text;
        //    //datos.Contraseña = txtPass.Text;

        //    //if (servicio.ActualizarSession(datos) != 0)
        //    //{
        //    //    Response.Write("<script language=javascript>alert('Sesion Actualizada');</script>");
        //    //}
        //    //else
        //    //{
        //    //    Response.Write("<script language=javascript>alert('Algo Salio Mal');</script>");
        //    //}
        //}


    }
}