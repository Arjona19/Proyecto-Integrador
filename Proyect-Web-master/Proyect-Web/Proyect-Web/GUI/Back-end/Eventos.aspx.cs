using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using DAO;
using Servicio;
using System.Collections;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Proyect_Web.GUI.Back_end
{
    public partial class Eventos : System.Web.UI.Page
    {
        EventosCTRL Ser = new EventosCTRL();
        EventosDAO dao = new EventosDAO();
        EventosBO bo = new EventosBO();
        protected void Page_Load(object sender, EventArgs e)
        {ArrayList ListUbic = dao.RecuperarCiudad();

            dblUbicacion.DataSource = ListUbic;
            dblUbicacion.DataBind();
            
            if (!IsPostBack)
            {
                if (txtIDEvento.Text == "")
                     {
                Button2.Enabled = false;
                Button3.Enabled = false;
                     }
                if (Image1.ImageUrl == "")
                {
                    Image1.ImageUrl = "~/Img/subirfoto.jpg";

                }
                MostrarTabla();
            }
           
           
       



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            bo.Nombre = txtNombreEvento.Text;
            bo.Descripcion = txtDescripcion.Value;
            bo.HoraInicio = HoraInicio.Value;
            bo.HoraFin = HoraFin.Value;
            bo.Costo = Precio.Value;
            bo.FechaInicio = FechaInicio.Value;
            bo.FechaFin = FechaFin.Value;
            string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
            if (fupfoto.HasFile)
            {
                fupfoto.PostedFile.SaveAs(Server.MapPath("~/Img/") + NombreImagen);
                Image1.ImageUrl = "~/Img/" +NombreImagen;

            }
            //almacenar en la BD
            bo.Fotografia = "/" + NombreImagen;
            bo.Aprobacion = 0;
            bo.Categoria = Convert.ToInt32(Categoria.SelectedValue);
            bo.Ubicacion = 1;
            if (dao.GuardarEvento(bo) != 0)
            {
                Response.Write("<script language=javascript>alert('Evento Guardado');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");
            }
            Limpiar();
            MostrarTabla();
        }
        public void CerrarSession(Object sender, EventArgs e)
        {
            Session.Remove("IDUsuario");
            Response.Redirect("../Front-end/Registro.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            bo.IDEvento = txtIDEvento.Text;
            bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            bo.Nombre = txtNombreEvento.Text;
            bo.Descripcion = txtDescripcion.Value;
            bo.HoraInicio = HoraInicio.Value;
            bo.HoraFin = HoraFin.Value;
            bo.Costo = Precio.Value;
            bo.FechaInicio = FechaInicio.Value;
            bo.FechaFin = FechaFin.Value;
            string NombreImagen = Path.GetFileName(fupfoto.PostedFile.FileName);
            if (fupfoto.HasFile)
            {
                fupfoto.PostedFile.SaveAs(Server.MapPath("~/Img/") + NombreImagen);
                Image1.ImageUrl = "~/Img/" + NombreImagen;

            }
            //almacenar en la BD
            bo.Fotografia = "/" + NombreImagen;
            bo.Aprobacion = 0;
            bo.Categoria = Convert.ToInt32(Categoria.SelectedValue);
            bo.Ubicacion = 1;
            if (dao.ActualizarEvento(bo) !=0)
            {
                Response.Write("<script language=javascript>alert('Evento Actualizado');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");
            }
            
            MostrarTabla();
        }

        protected void Seleccionar(object sender, EventArgs e)
        {
            if (txtIDEvento.Text == "")
            {
                Button2.Enabled = false;
                Button3.Enabled = false;
            }
            Button2.Enabled = true;
            Button3.Enabled = true;
            txtIDEvento.Text = ((GridView)sender).SelectedRow.Cells[2].Text;
            txtNombreEvento.Text = ((GridView)sender).SelectedRow.Cells[3].Text;
            txtDescripcion.Value = ((GridView)sender).SelectedRow.Cells[4].Text;
            Precio.Value = ((GridView)sender).SelectedRow.Cells[5].Text;
            HoraInicio.Value = ((GridView)sender).SelectedRow.Cells[6].Text;
            HoraFin.Value = ((GridView)sender).SelectedRow.Cells[7].Text;
            FechaInicio.Value = ((GridView)sender).SelectedRow.Cells[8].Text;
            FechaFin.Value = ((GridView)sender).SelectedRow.Cells[9].Text;
            Categoria.SelectedValue = ((GridView)sender).SelectedRow.Cells[10].Text;
            Image1.ImageUrl = "~/Img" + ((GridView)sender).SelectedRow.Cells[12].Text.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            bo.IDEvento = txtIDEvento.Text;
            if (dao.EliminarEvento(bo)!=0)
            {
                Response.Write("<script language=javascript>alert('Evento Eliminado');</script>");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Algo salio mal');</script>");
            }
            Limpiar();
            MostrarTabla();
        }
        public void MostrarTabla()
        {
            bo.IDUsuario = Convert.ToInt32(Session["IDUsuario"]);
            GridView1.DataSource = Ser.ServicioTabla(bo);
            GridView1.DataBind();

        }
        public void Limpiar()
        {
            txtIDEvento.Text = "";
            Categoria.SelectedValue = "";
            txtNombreEvento.Text = "";
            txtDescripcion.Value = "";
            HoraInicio.Value = "";
            HoraFin.Value = "";
            Precio.Value = "";
            FechaInicio.Value = "";
            FechaFin.Value = "";
            Image1.ImageUrl = "~/Img/subirfoto.jpg";
        }
    }
}