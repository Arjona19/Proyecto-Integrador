using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Servicio;


namespace Proyect_Web.GUI.Front_end
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            UsuariosCTRL obj = new UsuariosCTRL();



            UsuarioBO O = new UsuarioBO();
            O.Nombre = txtNombre.Text;
            O.SitioWeb = txtSitio.Text;
            O.Telefono = txtTelefono.Text;
            O.Telefono2 = txtTelefono1.Text;
            O.Usuario = txtUsuario.Text;
            O.Correo = txtCorreo.Text;
            O.Contraseña = txtContraseña.Text;
            if (obj.GuardarR(O) != 0)
            {
                Response.Write("<script language=javascript>alert('Datos Guardados');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");
            }
            Limpiar();
        }
        public void Limpiar()
        {
            txtNombre.Text = "";
            txtSitio.Text = "";
            txtTelefono.Text = "";
            txtTelefono1.Text = "";
            txtUsuario.Text = "";
            txtCorreo.Text = "";
            txtContraseña.Text = "";
        }
    }
}