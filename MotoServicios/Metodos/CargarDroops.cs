using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace MotoServicios
{
    public class CargarDroops
    {
        //Creacion de Variables publicas
        public SqlDataAdapter da;
        public DataSet ds;
        public string query = string.Empty;
        public bool mensaje = false;

        //Instancia de Metodos
        Connection conn = new Connection();

        #region Cargar Drop Ciudad
        public bool CargarDropCliente()
        {
            try
            {
                if (conn.Conectar())
                {
                    query = "SELECT NOMBRE FROM CLIENTE";
                    da = new SqlDataAdapter(query, conn.con);
                    ds = new DataSet();
                    da.Fill(ds);
                    mensaje = true;
                }
                else
                {
                    mensaje = false;
                }
            }
            catch
            {
                throw;
            }
            conn.Desconectar();
            return mensaje;
        }

        public bool CargarDropVendedor()
        {
            try
            {
                if (conn.Conectar())
                {
                    query = "select Nombre from usuario where Cargo like '%Ventas%' and  ID_USUARIO <>1";
                    da = new SqlDataAdapter(query, conn.con);
                    ds = new DataSet();
                    da.Fill(ds);
                    mensaje = true;
                }
                else
                {
                    mensaje = false;
                }
            }
            
            catch
            {
                throw;
            }
            conn.Desconectar();
            return mensaje;
        }
        #endregion


    }
}