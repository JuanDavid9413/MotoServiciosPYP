using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace MotoServicios
{
    public class Connection
    {
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
        public bool mensaje = false;

        public bool Conectar()
        {
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
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
            return mensaje;
        }

        public bool Desconectar()
        {
            try
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
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
            return mensaje;
        }

    }
}