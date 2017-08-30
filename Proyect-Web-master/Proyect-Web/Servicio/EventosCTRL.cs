using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using DAO;
using System.Collections;
using System.Data;
namespace Servicio
{
   public class EventosCTRL
    {
        EventosDAO Tipo_Ser = new EventosDAO();

        public int GuardarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.GuardarEvento(obj);
            return status;
        }
        public int ActualizarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.ActualizarEvento(obj);
            return status;
        }
        public int EliminarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.EliminarEvento(obj);
            return status;
        }
        public DataTable ServicioTabla(object obj)
        {
            return Tipo_Ser.TablaEvento(obj);
        }

    }
}
