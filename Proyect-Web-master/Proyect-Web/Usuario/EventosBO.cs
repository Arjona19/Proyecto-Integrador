using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BO
{
    public class EventosBO
    {
        public string IDEvento { get; set; }       
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Costo { get; set; }
        public  string HoraInicio { get; set; }
        public string HoraFin { get; set; }
        public string Fotografia { get; set; }
        public string FechaFin { get; set; }
        public string FechaInicio { get; set; }
        public int Aprobacion { get; set; }
        public int IDUsuario { get; set; }
        public int Categoria { get; set; }
        public int Ubicacion { get; set; }


    }
}
