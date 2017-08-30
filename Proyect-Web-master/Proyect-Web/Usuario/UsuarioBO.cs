using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BO
{
   public class UsuarioBO
    {
        public int IDUsuario { get; set; }
        public int IDTipoUsuario { get; set; }
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public string Telefono { get; set; }
        public string Telefono2 { get; set; }
        public string Correo1 { get; set; }
        public string Correo2 { get; set; }
        public string SitioWeb { get; set; }
        public string Usuario { get; set; }
        public string Contraseña { get; set; }
        public int IDCiudad { get; set; }
        public string Fotografia { get; set; }
        public string CorreoConsulta { get; set; }
        public string NombreC { get; set; }
    }
}
