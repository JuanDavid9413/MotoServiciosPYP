<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopConsultarProducto.aspx.cs" Inherits="MotoServicios.PopConsultarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MotoServiciosPYP</title>
    <style type="text/css">
        .form1 {
        
        }
        .auto-style1 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblNomProducto" runat="server" Text="Nombre del Producto" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNomProducto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />

                </td>
            </tr>
        </table>    
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>
</body>
</html>
