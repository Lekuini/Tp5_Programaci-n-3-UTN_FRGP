﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_GRUPO_3.ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Sucursal</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 220px;
            height: 2px;
        }
        .auto-style4 {
            height: 2px;
        }
        .auto-style5 {
            width: 220px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
        }
        .auto-style7 {
            width: 158px;
        }
        .auto-style8 {
            height: 2px;
            width: 158px;
        }
        .auto-style9 {
            height: 25px;
            width: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="hlbtnAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="hlbtnListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td class="auto-style7">
                    <asp:HyperLink ID="hlbtnEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong><H2>Listado de sucursales</H2></strong></td>
                <td class="auto-style5"></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">Búsqueda ingrese Id Sucursal:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtIdSucursal" runat="server" Width="206px" ValidationGroup="Grupo1IdSucursal"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="Grupo1IdSucursal" />
                </td>
                <td>
                    <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="rfvBusquedaIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Debe ingresar ID Sucursal" ForeColor="Red" ValidationGroup="Grupo1IdSucursal"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="grdDatos" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
