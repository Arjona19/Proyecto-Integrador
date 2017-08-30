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
   public  class UsuariosCTRL
    {
        UsuarioDAO Tipo_Ser = new UsuarioDAO();

        public int GuardarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.GuardarUs(obj);
            return status;
        }
        public int ActualizarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.ActualizarUs(obj);
            return status;
        }
        public int EliminarR(object obj)
        {
            int status = 0;
            status = Tipo_Ser.EliminarUs(obj);
            return status;
        }
        public DataTable ServicioTabla()
        {
            return Tipo_Ser.TablaUs();
        }
        public int ActualizarSession(object obj)
        {
            int estatus = 0;
            estatus = Tipo_Ser.ActualizarSession(obj);
            return estatus;
        }
    }
}
