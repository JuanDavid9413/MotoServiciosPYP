<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="MotoServicios.Inicio" %>
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
        .Contenedores {
        width:200px;
        height:200px;
        float:left;
        margin-top:5px;
        margin-left:10px;
        margin-bottom:5px;
        }
        .ImageMenu {
        width:200PX;
        height:200PX;
        }
        .ImageMenu:hover {
        background-color:#292828;
        }
    </style>
    <div id="ContenedorDos">
            <div class="Contenedores">
                <asp:ImageButton CLASS="ImageMenu" runat="server" ImageUrl="~/Imagenes/Ventas.png" PostBackUrl="~/ModuloVentas.aspx" />
                <asp:Label ID="lbl" runat="server" Text="Ventas" Font-Names="Arial" Font-Size="35px" ForeColor="Black"></asp:Label>
            </div>
        
            <div  class="Contenedores">
               <asp:ImageButton CLASS="ImageMenu" runat="server" ImageUrl="~/Imagenes/Inventario.png" />
               <asp:Label ID="lblInventarios" runat="server" Text="Inventarios" Font-Names="Arial" Font-Size="35px" ForeColor="Black"></asp:Label>
            </div>
       
            <div class="Contenedores">
               <asp:ImageButton CLASS="ImageMenu" runat="server" ImageUrl="~/Imagenes/FlujoCaja.png" />
               <asp:Label ID="lblFlujoDeCaja" runat="server" Text="Flujo Caja" ForeColor="Black" Font-Size="35px" Font-Names="Arial"></asp:Label>
           </div>
       
           <div class="Contenedores">
               <asp:ImageButton CLASS="ImageMenu" runat="server" ImageUrl="~/Imagenes/Config.png" />
               <asp:Label ID="lblConfig" runat="server" Text="Configuración" Font-Names="Arial" Font-Size="40px" ForeColor="Black"></asp:Label>
           </div>
       
    </div>
</asp:Content>
