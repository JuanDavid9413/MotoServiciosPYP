using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotoServicios
{
    public partial class RealizarVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtnList_Click(object sender, ImageClickEventArgs e)
        {
            imgBtnList.Attributes.Add("onclick", "javascript:PopListProduct();");
        }
    }
}