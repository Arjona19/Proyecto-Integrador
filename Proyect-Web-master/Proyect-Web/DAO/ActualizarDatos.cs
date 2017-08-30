using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using BO;
using System.Data;

namespace DAO
{
    public class ActualizarDatos
    {
        ConexionDAO con = new ConexionDAO();
        public string Nombre(UsuarioBO obj)
        {

            DataSet Img = con.EjecutarSentencia("select Nombre from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Nombre = "";
            if (Img.Tables[0].Rows.Count > 0)
            {
                Nombre = Convert.ToString(Img.Tables[0].Rows[0]["Nombre"]);

            }
            return Nombre;
        }
        public string SitioWeb(UsuarioBO obj)
        {

            DataSet Sitio = con.EjecutarSentencia("select SitioWeb from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string SW = "";
            if (Sitio.Tables[0].Rows.Count > 0)
            {
                SW = Convert.ToString(Sitio.Tables[0].Rows[0]["SitioWeb"]);

            }
            return SW;
        }
        public string Correo(UsuarioBO obj)
        {

            DataSet Correo = con.EjecutarSentencia("select Correo from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Co = "";
            if (Correo.Tables[0].Rows.Count > 0)
            {
                Co = Convert.ToString(Correo.Tables[0].Rows[0]["Correo"]);

            }
            return Co;
        }
        public string SegundoCorreo(UsuarioBO obj)
        {

            DataSet Correo2 = con.EjecutarSentencia("select Correo1 from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Co2 = "";
            if (Correo2.Tables[0].Rows.Count > 0)
            {
                Co2 = Convert.ToString(Correo2.Tables[0].Rows[0]["Correo1"]);

            }
            return Co2;
        }
        public string Correo3(UsuarioBO obj)
        {

            DataSet Correo3 = con.EjecutarSentencia("select Correo2 from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Co3 = "";
            if (Correo3.Tables[0].Rows.Count > 0)
            {
                Co3 = Convert.ToString(Correo3.Tables[0].Rows[0]["Correo2"]);

            }
            return Co3;
        }
        public string Telefono(UsuarioBO obj)
        {

            DataSet Telefono = con.EjecutarSentencia("select Telefono from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Tel = "";
            if (Telefono.Tables[0].Rows.Count > 0)
            {
                Tel = Convert.ToString(Telefono.Tables[0].Rows[0]["Telefono"]);

            }
            return Tel;
        }
        public string Usuario(UsuarioBO obj)
        {

            DataSet Usuario = con.EjecutarSentencia("select Usuario from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Usu = "";
            if (Usuario.Tables[0].Rows.Count > 0)
            {
                Usu = Convert.ToString(Usuario.Tables[0].Rows[0]["Usuario"]);

            }
            return Usu;
        }
        public string Contraseña(UsuarioBO obj)
        {

            DataSet Contraseña = con.EjecutarSentencia("select Contraseña from Usuario where Usuario.IDUsuario = '" + obj.IDUsuario + "'");
            string Con = "";
            if (Contraseña.Tables[0].Rows.Count > 0)
            {
                Con = Convert.ToString(Contraseña.Tables[0].Rows[0]["Contraseña"]);

            }
            return Con;
        }
    }
}
