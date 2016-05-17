using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotoServicios
{
    public partial class ConsultarVenta : System.Web.UI.Page
    {
        //instacia hacia los otros archivos.
        CargarDroops cd = new CargarDroops();
        CargarGrillas cg = new CargarGrillas();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendario.Visible = false;
            }
            else
            {
                Calendario.Visible = false;
            }
            CargarDropCliente();
            CargarDropVendedor();

        }

        #region Funciones
        public void Borrar()
        {
            txtCodProducto.Text = string.Empty;
            txtNomProducto.Text = string.Empty;
            //txtNomCliente.Text = string.Empty;
            //txtNomVendedor.Text = string.Empty;
            txtNumTrans.Text = string.Empty;
            txtFecha.Text= string.Empty;
        }
        public void CargarDropCliente()
        {
            try
            {
                if (cd.CargarDropCliente())
                {
                    txtNomCliente.DataSource = cd.ds;
                    txtNomCliente.DataTextField = "Nombre";
                    txtNomCliente.DataValueField = "Nombre";
                    txtNomCliente.DataBind();
                }
                else
                {

                }
            }

            catch
            {
                throw;
            }
        }
        public void CargarDropVendedor()
        {
            if (cd.CargarDropVendedor())
            {
                txtNomVendedor.DataSource = cd.ds;
                txtNomVendedor.DataTextField = "Nombre";
                txtNomVendedor.DataValueField = "Nombre";
                txtNomVendedor.DataBind();
            }
            else
            {
                Response.Write("No se puede cargar Drop Ciudad");
            }
        }
        #endregion
        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            Borrar();
        }

        protected void Calendario_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = Convert.ToString(Calendario.SelectedDate);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendario.Visible = true;
        }
    }
}