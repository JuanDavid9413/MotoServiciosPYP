<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ModuloInvnetario.aspx.cs" Inherits="MotoServicios.ModuloInvnetario" %>
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
    </style>

    <div id="ContenedorDos">
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" />
                    <asp:Label ID="lblConsultar" runat="server" Text=" Consultar Inventario" Font-Names="Arial" ></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" />
                    <asp:Label ID="lblActualizarInventario" runat="server" Text="Actualziar Inventario" Font-Names="Arial"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" />
                    <asp:Label ID="lblBorrarInventario" runat="server" Text="Borrar Producto" Font-Names="Arial"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
