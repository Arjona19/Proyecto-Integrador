using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using BO;
using System.Collections;

namespace DAO
{
    public class EventosDAO
    { 
        
        ConexionDAO con;
        string sentenciaSQL;
        public EventosDAO()
        {
            con = new ConexionDAO();
        }
        public int GuardarEvento(object obj)
        {
            EventosBO dat = (EventosBO)obj;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.ConectarBD();
            sentenciaSQL = "INSERT INTO [dbo].[Evento]([Nombre],[Descripcion],[CostoEntrada],[HoraInicio],[HoraFin],[Fecha Fin],[Fecha Inicio],[FotoEvento],[Autorizado],[IDClasificacion],[IDUsuario],[IDUbicacion])VALUES('"+dat.Nombre+"','"+dat.Descripcion+"','"+dat.Costo+"','"+dat.HoraInicio+"','"+dat.HoraFin+"','"+dat.FechaFin+"','"+dat.FechaInicio+"' ,'"+dat.Fotografia+"','"+dat.Aprobacion+"','"+dat.Categoria+"','"+dat.IDUsuario+"','"+dat.Ubicacion+"')";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public int ActualizarEvento(object obj)
        {

            EventosBO dat = (EventosBO)obj;
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.ConectarBD();

            sentenciaSQL = "UPDATE [dbo].[Evento]SET [Nombre] ='"+dat.Nombre+"',[Descripcion] ='"+dat.Descripcion+"',[CostoEntrada] ='"+dat.Costo+"' ,[HoraInicio] = '"+dat.HoraInicio+"',[HoraFin] = '"+dat.HoraFin+"',[Fecha Fin] = '"+dat.FechaFin+"',[Fecha Inicio] ='"+dat.FechaInicio+"',[FotoEvento] ='"+dat.Fotografia+"' ,[Autorizado] ='"+dat.Aprobacion+"' ,[IDClasificacion] ='"+dat.Categoria+"',[IDUsuario] = '"+dat.IDUsuario+"',[IDUbicacion] = '"+dat.Ubicacion+"'WHERE IDEvento = '"+dat.IDEvento+"'";
            return con.EjecutarSQL(sentenciaSQL);
        }
      
        public int EliminarEvento(object obj)
        {

            EventosBO dat = (EventosBO)obj;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.ConectarBD();
            sentenciaSQL = "Delete  from Evento where IDEvento='" + dat.IDEvento + "' and IDUsuario='"+dat.IDUsuario+"' ";
            return con.EjecutarSQL(sentenciaSQL);
        }
        public DataTable TablaEvento(object obj)
        {
            EventosBO dat = (EventosBO)obj;
            sentenciaSQL = "Select * from Evento where IDUsuario='"+dat.IDUsuario+"' ";
            SqlDataAdapter Tabla_BD = new SqlDataAdapter(sentenciaSQL, con.ConectarBD());
            DataTable Tabla_Virtual = new DataTable();
            Tabla_BD.Fill(Tabla_Virtual);
            return Tabla_Virtual;
        }

        public DataTable VerEvento()
        {
            
            sentenciaSQL = "Select * from Evento";
            SqlDataAdapter Tabla_BD = new SqlDataAdapter(sentenciaSQL, con.ConectarBD());
            DataTable Tabla_Virtual = new DataTable();
            Tabla_BD.Fill(Tabla_Virtual);
            return Tabla_Virtual;
        }




        public ArrayList RecuperarCiudad()
        {
            sentenciaSQL = "Select * From Ubicaciones;";
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
