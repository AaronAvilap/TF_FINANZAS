<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="TF_FINANZAS.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background: url(imagenes/fondomodif.jpg);
            background-size:100% 100%;
            background-attachment: fixed ;
        }

    </style>
</head>
    <body>
        <form id="form1" runat="server">
            <div style="font-family: 'Zizou Slab Bold'; font-size: 46px; font-style: normal; font-weight: 100">
                Bienvenidos a Bonos Web<br />
                <br />
                <br />
                <image src="imagenes/as.png"></image>
             </div>
            <center>
             <asp:Button class="Button1" runat="server" Text="Proyeccion de Bono" Width="173px" ID="btnProyeccionBono_Principal" OnClick="btnProyeccion_Click" />
             <asp:Button class="Button2" runat="server" Text="Emitir un Bono" Width="173px" ID="btnEmitirBono_Principal" OnClick="btnEmitir_Click" />
             <asp:Button class="Button3" runat="server" Text="Cerrar Sesion" Width="173px" OnClick="Unnamed1_Click" ID="btnCerrarSesion_Principal" />
            </center>
        <p style="font-family: 'Zizou Slab Bold'; font-size: 30px; font-style: normal; font-weight: 100">
            Bonos emitidos</p>
            <center>
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </center>
       </form>
        </body>

</html>
