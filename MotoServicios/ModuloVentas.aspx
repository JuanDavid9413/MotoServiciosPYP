<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ModuloVentas.aspx.cs" Inherits="MotoServicios.ModuloVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        #ContenedorDos {
        width:80%;
        height:300px;
        display:block;
        position:relative;
        margin-left:auto;
        margin-right:auto;
        }
        .imgLinks {
        width:200px;
        height:200px;
        }
    .auto-style4 {
        width: 245px;
    }
        .auto-style5 {
            width: 388px;
        }
    </style>
    <div id="ContenedorDos">
        <div>
            <table>
                <tr>
                    <td class="auto-style5">
                        <asp:ImageButton CLASS="imgLinks" runat="server" ImageUrl="~/Imagenes/RealizarVenta.png" PostBackUrl="~/ConsultarVenta.aspx" />
                        <br />
                        <asp:Label ID="lblConsultarVenta" runat="server" Text="Consultar Venta" Font-Names="Arial" Font-Size="35px"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:ImageButton CLASS="imgLinks" runat="server" ImageUrl="~/Imagenes/RealizaVenta.png" PostBackUrl="~/RealizarVenta.aspx" />
                        <br />
                        <asp:Label ID="lblRealizarTrans" runat="server" Text="Realizar Transacción" Font-Names="Arial" Font-Size="35px"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>  
    </div>
</asp:Content>
