using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Servicio;

namespace Proyect_Web
{
    public partial class Registro : System.Web.UI.Page
    {
        UsuarioBO datos = new UsuarioBO();
        UsuariosCTRL Servicio = new UsuariosCTRL();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                // datos.IDUsuario = int.Parse(txtIDUsuario.Text);
                datos.IDTipoUsuario = 2;
                datos.Nombre = txtNombre.Text;
                datos.Correo = txtCorreo.Text;
                datos.Telefono = txtTelefono.Text;
                datos.SitioWeb = txtSitioWeb.Text;
                datos.Usuario = txtUsuario.Text;
                datos.Contraseña = txtContraseña.Text;
                //datos.IDCiudad = int.Parse(ddlCiudad.Text);

              //almacenar en la BD
                




                if (Servicio.GuardarR(datos) == 1)
                {
                    Response.Write("<script language=javascript>Show('#myModal');</script>");
                    limpiar();

                }
                
               

            }
            catch
            {
                if(Servicio.GuardarR(datos) == 0)
                {
                    Response.Write("<script language=javascript>alert('Error al Guardar');</script>");
                }
            }
        }
        public void limpiar()
        {
            txtNombre.Text = "";
            txtContraseña.Text = "";
            txtCorreo.Text = "";
            txtSitioWeb.Text = "";
            txtTelefono.Text = "";
            txtUsuario.Text = "";
        }
    }
}