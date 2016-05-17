using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace MotoServicios
{
    public class CargarGrillas
    {
        //Declara Variables
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string query = string.Empty;
        public bool mensaje = false;

        //Instancia objetos
        Connection conn = new Connection();

        public List<Productos> TodosProductos()
        {
            conn.Conectar();
            List<Productos> list = new List<Productos>();
            using (cmd = new SqlCommand())
            {
                query = "select CodigoPro,NombrePro,Cantidad,Precio,Descripcion from Productos ";
                cmd.Connection = conn.con;
                cmd.CommandText = query;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    list.Add(
                        new Productos
                        {
                            Codigo = dr[0].ToString(),
                            Nombre= dr[1].ToString(),
                            Cantidad=dr[2].ToString(),
                            Precio=dr[3].ToString(),
                            Descripcion=dr[4].ToString()

                        }
                        );
                }
                conn.Desconectar();
                return list;
            }
        }

        public List<Productos> ConsultaProdutosNombre(string NombreProducto)
        {
            conn.Conectar();
            List<Productos> list = new List<Productos>();
            using (cmd = new SqlCommand())
            {
                query = "select CodigoPro, NombrePro, Cantidad, Precio, Descripcion from Productos WHERE NombrePro like '%"+NombreProducto+"%'";
                cmd.Connection = conn.con;
                cmd.CommandText = query;
                dr= cmd.ExecuteReader();
                while (dr.Read())
                {
                    list.Add(
                        new Productos
                        {
                            Codigo = dr[0].ToString(),
                            Nombre = dr[1].ToString(),
                            Cantidad = dr[2].ToString(),
                            Precio = dr[3].ToString(),
                            Descripcion = dr[4].ToString()
                        }
                        );
                }
                conn.Desconectar();
                return list;

            }
        }
    }
}