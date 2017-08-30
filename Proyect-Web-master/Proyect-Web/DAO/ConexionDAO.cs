using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace DAO
{
   public  class ConexionDAO
    {
        SqlCommand ComandoSQL; //crea una variable tipo SqlCommand para transacciones sql
        SqlDataAdapter adaptador; //crea una variable sqlDataAdapter para un conjunto de datos y una conexión a una bd que se usan para rellenar DataSet y actualizar una base de datos de SQL Server
        DataSet DataSetAdaptador; //representa un conjunto completo de datos, incluyendo las tablas que contienen, ordenan y restringen los datos
        SqlConnection con; //para abrir conexion a bd sqlserver
        DataTable Tabla;
        // SqlCommand cmd;
        public SqlConnection ConectarBD()
        {
            string cadena = "Data Source=MAURICIO-PC;Initial Catalog=EventosProyecto;Integrated Security=True";
            con = new SqlConnection(cadena);
            return con;
        }

        public void AbrirBD()
        {
            con.Open();
        }
        public void CerrarBD()
        {
            con.Close();
        }
        //metodos genericos para todo el Proyecto
        public int EjecutarSQL(string sentencia)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = ConectarBD();
            AbrirBD();
            cmd.CommandText = sentencia;
            int Folio_Trasaccion = cmd.ExecuteNonQuery();
            if (Folio_Trasaccion <= 0)
            {
                return 0;
            }
            return 1;
        }
        public int EjecutarComando(string Comando)
        {

            // INSERT, DELETE, UPDATE
            String strComandoSQL = Comando;

            adaptador = new SqlDataAdapter(); //crea la instancia de SqlDataAdapter
            ComandoSQL = new SqlCommand(); //crea instancia de SqlCommand
            ComandoSQL.Connection = this.ConectarBD(); //crea un objeto de conexion
            this.AbrirBD(); //abre la conexion
            ComandoSQL.CommandText = strComandoSQL; //establece una instrucción SQL que se va a ejecutar
            int id = Convert.ToInt32(ComandoSQL.ExecuteScalar()); //ejecuta instrucción sql

            this.ConectarBD(); //cierra conexion
            return id;
        }
        public int EjecutarComando(SqlCommand SqlComando)
        {
            // INSERT, DELETE, UPDATE
            ComandoSQL = new SqlCommand();
            ComandoSQL = SqlComando;
            ComandoSQL.Connection = this.ConectarBD();
            this.AbrirBD();
            int id = 0; id = Convert.ToInt32(ComandoSQL.ExecuteScalar());
            this.CerrarBD();
            return id;

        }
        public DataSet EjecutarSentencia(string Sentencia)
        {
            // SELECT
            ComandoSQL = new SqlCommand();
            adaptador = new SqlDataAdapter();
            ComandoSQL = new SqlCommand();
            DataSetAdaptador = new DataSet();


            String strComandoSQL = Sentencia;
            ComandoSQL.CommandText = strComandoSQL;

            ComandoSQL.Connection = this.ConectarBD();
            this.AbrirBD();

            adaptador.SelectCommand = ComandoSQL;
            adaptador.Fill(DataSetAdaptador);
            return DataSetAdaptador;


        }
        public bool EjecutarComandoSQL(SqlCommand strSQLCommand)
        {
            // INSERTAR, MODIFICAR,BORRAR
            //INSERT UPDATE, DELETE 
            bool Respuesta = true;
            ComandoSQL = new SqlCommand();
            ComandoSQL = strSQLCommand;
            ComandoSQL.Connection = this.ConectarBD();
            this.AbrirBD();
            Respuesta = (ComandoSQL.ExecuteNonQuery() <= 0) ? false : true;
            this.CerrarBD();
            return Respuesta;
        }
        public DataTable EjecutarSentenciaSQL(SqlCommand strSQLCommand)
        {
            // SELECCIONAR DATOS DE LA BASE DE DATOS 
            // SELECT




            this.ConectarBD();
            this.AbrirBD();
            strSQLCommand = new SqlCommand(strSQLCommand.CommandText, con);

            using (SqlDataAdapter da = new SqlDataAdapter(strSQLCommand))
            {
                Tabla = new DataTable();
                da.Fill(Tabla);
            }
            return Tabla;
        }
    }
}
