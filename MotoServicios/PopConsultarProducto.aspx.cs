using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotoServicios
{
    public partial class PopConsultarProducto : System.Web.UI.Page
    {
        //Instance the class
        CargarGrillas CG = new CargarGrillas();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarGrillaProductos();
        }

        protected void CargarGrillaProductos()
        {
            GridView1.DataSource = CG.TodosProductos();
            GridView1.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNomProducto.Text != string.Empty)
            {
                GridView1.DataSource = CG.ConsultaProdutosNombre(txtNomProducto.Text);
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = CG.TodosProductos();
                GridView1.DataBind();
            }
        }
    }
}