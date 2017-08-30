using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect_Web
{
    public partial class Sit : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fotografia"] == null || Session["Nombre"]==null)
            {   Response.Redirect("../Front-end/Registro.aspx");
                Response.Write("<script language=javascript>alert('No has iniciado sesion');</script>");
                
            }
            Perfil.ImageUrl = "~/Img/" + Session["Fotografia"].ToString();
            Label1.Text = Session["Nombre"].ToString();

        }
        public void CerrarSession(Object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("IDUsuario");
            Response.Redirect("../Front-end/Registro.aspx");
        }
    }
}