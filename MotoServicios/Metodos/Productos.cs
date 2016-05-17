using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MotoServicios
{
    public class Productos
    {
        private string _Codigo;

        public string Codigo
        {
            set { _Codigo = value;  }
            get { return _Codigo; }
        }

        private string _Nombre;

        public string Nombre
        {
            set { _Nombre = value; }
            get { return _Nombre; }
        }

        private string _Cantidad;

        public string Cantidad
        {
            set { _Cantidad = value; }
            get { return _Cantidad; }
        }

        private string _Precio;

        public string Precio
        {
            set { _Precio = value; }
            get { return _Precio; }
        }

        private string _Descripcion;

        public string Descripcion
        {
            set { _Descripcion = value; }
            get { return _Descripcion; }
        }

    }
}