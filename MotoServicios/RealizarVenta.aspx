<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="RealizarVenta.aspx.cs" Inherits="MotoServicios.RealizarVenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        #ContenedorDos {
        width:80%;
        display:block;
        position:relative;
        margin-left:auto;
        margin-right:auto;
        }
        .auto-style3 {
            height: 75px;
        }
    </style>
    <script>
        function PopListProduct()
        {
            hidden = open('http://localhost:3544/PopConsultarProducto.aspx', 'NewWindow', 'top=0,left=0,width=800,height=600,status=yes,resizable=yes,scrollbars=yes');
        }
    </script>
    <div id="ContenedorDos">
            <div id="Titulo">
                <asp:Label ID="lblRealziarVenta" runat="server" Text="Realizar Venta" Font-Size="25px" Font-Names="Arial" ForeColor="Black"></asp:Label>
                <br />
            </div>
            <div id="Espaciado">
                <p>--------------------------------------------------------------------------------------------------------------------------------------------------------</p>
            </div>
            <div id="Formulario">
                <table>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblCodigoPro" runat="server" Text="Codigo Del Producto" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtCodigoPro" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="lblNomProducto" runat="server" Text="Nombre del Producto" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtNomProducto" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="imgBtnList" runat="server" Height="32px" ImageUrl="~/Imagenes/ListadoProductos.jpg" OnClick="imgBtnList_Click" Width="30px" />
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="lblCantidad" runat="server" Text="Cantidad" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                            <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:Button ID="btnBorrar" runat="server" Text="Borrar" />

                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btnQuitarProd" runat="server" Text="Quitar Producto" />

                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />

                        </td>
                    </tr>
                </table>
                <br />
                <br />
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
                <br />
                <br />
            </div>
        <div id="Total">
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </div>
        <div id="RealizarCompra" >
            <asp:Button ID="Button4" runat="server" Text="Button" />
        </div>
    </div>
</asp:Content>
