<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ConsultarVenta.aspx.cs" Inherits="MotoServicios.ConsultarVenta" %>
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
        #title.h2 {
        
        
        }
        #Fomulario {
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style3 {
            margin-left: 40px;
            height: 67px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            height: 70px;
        }
        .auto-style6 {
            height: 62px;
        }
    </style>

    <div id="ContenedorDos">
        <div id="Title">
            <asp:Label ID="lblConsultarVenta" runat="server" Text="Consultar Venta" ForeColor="Black" Font-Names="Arial" Font-Overline="False" Font-Size="25px"></asp:Label> 

        </div>
        <div id="Espaciador"><p>------------------------------------------------------------------------------------------------------------------------------------</p></div>
        <div id="Formulario">
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblCodProducto" runat="server" Text="Codigo del Producto" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:TextBox ID="txtCodProducto" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblNomProducto" runat="server" Text="Nombre del Producto" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:TextBox ID="txtNomProducto" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblNomCliente" runat="server" Text="Nombre del Cliente" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:DropDownList ID="txtNomCliente" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblNomVendedor" runat="server" Text="Nombre del Vendedor" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:DropDownList ID="txtNomVendedor" runat="server"></asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblNumTrans" runat="server" Text="# de la Transaccion" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:TextBox ID="txtNumTrans" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblFechaTrans" runat="server" Text="Fecha de la Venta" Font-Names="Arial Black" Font-Size="15px"></asp:Label>
                        <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="23px" ImageUrl="~/Imagenes/Calendario.png" OnClick="ImageButton1_Click" Width="29px" />
                        <br />
                        <asp:Calendar ID="Calendario" runat="server" OnSelectionChanged="Calendario_SelectionChanged"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
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
        </div>
    </div>
    
</asp:Content>
