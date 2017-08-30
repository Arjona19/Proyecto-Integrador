using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using BO;
using System.Collections;

namespace DAO
{
    public class UsuarioDAO
    {
        ConexionDAO con;
        string sentenciaSQL;
        public UsuarioDAO()
        {
            con = new ConexionDAO();
        }
        public int GuardarUs(object obj)
        {
            
            UsuarioBO dat = (UsuarioBO)obj;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.ConectarBD();
            sentenciaSQL = "Insert Into Usuario (IDTipoUsuario,Nombre,Correo,Telefono,SitioWeb,Usuario,Contraseña) values('2','" + dat.Nombre + "','" + dat.Correo + "','" + dat.Telefono + "','" + dat.SitioWeb + "','" + dat.Usuario + "','" + dat.Contraseña + "' ) ";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public int ActualizarUs(object obj)
        {

            UsuarioBO dat = (UsuarioBO)obj;
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.ConectarBD();

            //sentenciaSQL = "Update Usuario set (IDTipoUsuario='"+dat.IDTipoUsuario+"',Nombre='"+dat.Nombre+"',Correo='"+dat.Correo+"',Telefono='"+dat.Telefono+"',SitioWeb='"+dat.SitioWeb+"',Usuario='"+dat.Usuario+"',Contraseña='"+dat.Contraseña+"',IDCiudad='"+dat.IDCiudad+"',Fotografia='"+dat.Fotografia+"' ) ";
            sentenciaSQL = "UPDATE [dbo].[Usuario]SET [IDTipoUsuario] = '2',[Nombre] = '"+dat.Nombre+"',[Correo] = '"+dat.Correo+"',[SitioWeb] = '"+dat.SitioWeb+"',[Fotografia] = '"+dat.Fotografia+"',[Correo1] = '"+dat.Correo1+"',[Correo2] = '"+dat.Correo2+"',[Telefono] = '"+dat.Telefono+"' WHERE IDUsuario = '"+dat.IDUsuario+"'";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public int ActualizarSession(object obj)
        {
            UsuarioBO dat = (UsuarioBO)obj;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.ConectarBD();
            
            sentenciaSQL = "UPDATE [dbo].[Usuario]SET [Usuario] = '" + dat.Usuario + "',[Contraseña] = '" + dat.Contraseña + "' WHERE IDUsuario ='" + dat.IDUsuario + "' ";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public int EliminarUs(object obj)
        {
            UsuarioBO dat = (UsuarioBO)obj;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.ConectarBD();
            sentenciaSQL = "Delete from Usuario where IDUsuario='" + dat.IDUsuario + "' ";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public DataTable TablaUs()
        {
            sentenciaSQL = "Select * from Usuario;";
            SqlDataAdapter Tabla_BD = new SqlDataAdapter(sentenciaSQL, con.ConectarBD());
            DataTable Tabla_Virtual = new DataTable();
            Tabla_BD.Fill(Tabla_Virtual);
            return Tabla_Virtual;
        }
      
        public int VerificarLog(UsuarioBO obj)
        {
            DataSet datos = con.EjecutarSentencia("select IDUsuario from Usuario where Usuario='" + obj.Usuario + "' and Contraseña='" + obj.Contraseña + "'");

            int id = 0;

            if (datos.Tables[0].Rows.Count > 0)
            {
                id = Convert.ToInt32(datos.Tables[0].Rows[0]["IDUsuario"]);

            }
            return id;
        }
        public int ChekarTipo(UsuarioBO obj)
        {
            DataSet TIPO = con.EjecutarSentencia("select IDTipoUsuario from Usuario where Usuario='" + obj.Usuario + "' and Contraseña='" + obj.Contraseña + "'");
            int Tipo = 0;
            if (TIPO.Tables[0].Rows.Count > 0)
            {
                Tipo = Convert.ToInt32(TIPO.Tables[0].Rows[0]["IDTipoUsuario"]);

            }
            return Tipo;
        }
        
        public string Imagen(UsuarioBO obj)
        {
            DataSet Img = con.EjecutarSentencia("select Fotografia from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string img = "";
            if (Img.Tables[0].Rows.Count > 0)
            {
                img = Convert.ToString(Img.Tables[0].Rows[0]["Fotografia"]);

            }
            return img;
        }
        public ArrayList RecuperarCiudad()
        {
            sentenciaSQL = "Select * From Ciudad;";
            SqlDataAdapter Tabla_BD = new SqlDataAdapter(sentenciaSQL, con.ConectarBD());
            DataTable Tabla_Virtual = new DataTable();
            Tabla_BD.Fill(Tabla_Virtual);
            ArrayList aListCiudad = new ArrayList();
            foreach (DataRow Row in Tabla_Virtual.Rows)
            {
                UsuarioBO cBO = new UsuarioBO { IDCiudad = (int)Row[0], NombreC = (string)Row[1] };
                aListCiudad.Add(cBO);

            }
            return aListCiudad;
        }
        

    }
}
