<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmitirBono.aspx.cs" Inherits="TF_FINANZAS.EmitirBono" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function solonumeroscoma(e) {
            key = e.keyCode || e.which;
            teclado = String.fromCharCode(key);
            numeros = "0123456789,"; //array
            especiales = "8-37-39-46-188" //retroceso-izq-der-suprimir-,
            teclado_especial = false;
            for (var i in especiales) {
                if (key == especiales[i]) {
                    teclado_especial = true;
                }
            }
            if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                return false;
            }
        }
        function fecha(e) {
            key = e.keyCode || e.which;
            teclado = String.fromCharCode(key);
            numeros = "0123456789,/"; //array
            especiales = "8-37-39-46-188-191" //retroceso-izq-der-suprimir-,/
            teclado_especial = false;
            for (var i in especiales) {
                if (key == especiales[i]) {
                    teclado_especial = true;
                }
            }
            if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                return false;
            }
        }

    </script>
    <style class="auto-style1">
        body{
            background: url(imagenes/fondomodif.jpg);
            background-size:100% 100%;
            background-attachment: fixed ;
        }
        .auto-style1 {
                font-family: "Zizou Slab Bold";
                font-weight: 100;
                font-size: 30px;
        }
        .auto-style3 {
            width: 286px;
        }
        .auto-style4 {
            width: 172px;
        }
        .auto-style5 {
            width: 41%;
            margin-right: 0px;
        }
        .auto-style7 {
            width: 250px;
            height: 23px;
        }
        .auto-style12 {
            width: 204px;
            height: 23px;
        }
        .auto-style14 {
            width: 241px;
        }
        .auto-style15 {
            height: 23px;
            width: 241px;
        }
        .auto-style18 {
            width: 279px;
        }
        .auto-style19 {
            height: 23px;
            width: 279px;
        }
        .auto-style20 {
            width: 94%;
        }
        .auto-style24 {
            width: 43%;
        }
        .auto-style26 {
            width: 148px;
        }
        .auto-style31 {
            width: 327px;
        }
        .auto-style32 {
            height: 23px;
            width: 327px;
        }
        .auto-style33 {
            color: white;
            background-color: mediumblue;
            width: 250px;
        }
        .auto-style34 {
            width: 392px;
        }
        .auto-style35 {
            height: 23px;
            width: 392px;
        }
        .auto-style36 {
            width: 204px;
        }
        .auto-style37 {
            width: 389px;
        }
        .auto-style38 {
            width: 376px;
        }
        .auto-style39 {
            width: 440px;
        }
        .auto-style40 {
            width: 250px;
            height: 26px;
        }
        .auto-style41 {
            width: 327px;
            height: 26px;
        }
        .auto-style42 {
            width: 204px;
            height: 26px;
        }
        .auto-style43 {
            width: 392px;
            height: 26px;
        }
        .auto-style44 {
            width: 241px;
            height: 26px;
        }
        .auto-style45 {
            width: 279px;
            height: 26px;
        }
        .auto-style46 {
            color: white;
            background-color: mediumblue;
            width: 250px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Zizou Slab Bold'; font-size: 46px; font-style: normal; font-weight: 100">
            Emision de Bono<br/>
            <image src="imagenes/as.png"></image>
        </div>
        <center>
             <asp:Button class="Button1" runat="server" Text="Proyeccion de Bono" Width="173px" ID="btnProyeccion_EmitirBono" OnClick="btnProyeccion_Click" />
             <asp:Button class="Button2" runat="server" Text="Regresar" Width="173px" ID="btnRegresar_EmitirBono" OnClick="btnRegresarPrin_Click" />
             <asp:Button class="Button3" runat="server" Text="Cerrar Sesion" Width="173px" ID="btnCerrarSesion_EmitirBono" OnClick="btnCerrar_Click" />
        </center>
    <p class="auto-style1">
        Datos de Entrada&nbsp;&nbsp;
    </p>
    <table class="auto-style20">
        <tr>
            <td class="auto-style33">Metodo de Pago:</td>
            <td class="auto-style33">
                        <asp:DropDownList ID="cmbMetodoPago_EmitirBono" runat="server" Height="16px" Width="177px">
                            <asp:ListItem>Aleman</asp:ListItem>
                            <asp:ListItem>Frances</asp:ListItem>
                            <asp:ListItem>Americano</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style33">Tipo de tasa de interes:</td>
            <td class="auto-style33">
                        <asp:DropDownList ID="cmbTipoTasaInteres_EmitirBono" runat="server" Height="16px" Width="177px" >
                            <asp:ListItem>Nominal</asp:ListItem>
                            <asp:ListItem>Efectiva</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style33">%Prima:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtPorcentPrima_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style33">Valor Nominal:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtValorNominal_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false" ></asp:TextBox>
                    </td>
            <td class="auto-style33">Capitalizacion:</td>
            <td class="auto-style33">
                        <asp:DropDownList ID="cmbCapitalizacion_EmitirBono" runat="server" Height="16px" Width="177px" >
                            <asp:ListItem>Diaria</asp:ListItem>
                            <asp:ListItem>Quincenal</asp:ListItem>
                            <asp:ListItem>Mensual</asp:ListItem>
                            <asp:ListItem>Bimestral</asp:ListItem>
                            <asp:ListItem>Trimestral</asp:ListItem>
                            <asp:ListItem>Cuatrimestral</asp:ListItem>
                            <asp:ListItem>Semestral</asp:ListItem>
                            <asp:ListItem>Anual</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style33">%Estructuracion:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtPorcentEstructuracion_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style33">Valor Comercial:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtValorComercial_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">Tasa de interes:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtTasaInteres_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">%Colocacion:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtPorcentColocacion_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style33"># de Anios:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtNumeroAnios_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">Tasa anual de dct:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtTasaAnualDesc_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">%Flotacion:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtPorcentFlotacion_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style33">Frecuencia de Cupon:</td>
            <td class="auto-style33">
                        <asp:DropDownList ID="cmbFrecuenciaCupon_EmitirBono" runat="server" Height="16px" Width="177px" >
                            <asp:ListItem>Mensual</asp:ListItem>
                            <asp:ListItem>Bimestral</asp:ListItem>
                            <asp:ListItem>Trimestral</asp:ListItem>
                            <asp:ListItem>Cuatrimestral</asp:ListItem>
                            <asp:ListItem>Semestral</asp:ListItem>
                            <asp:ListItem>Anual</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style33">Imp. a la renta:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtImpuestoRenta_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">%CAVALI:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtPorcentCAVALI_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style33">Dias por Anio</td>
            <td class="auto-style33">
                        <asp:DropDownList ID="cmbDiasXAnio_EmitirBono" runat="server" Height="16px" Width="177px" >
                            <asp:ListItem>360</asp:ListItem>
                            <asp:ListItem>365</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style33">Fecha emision:</td>
            <td class="auto-style33">
                        <asp:TextBox ID="txtFechaEmision_EmitirBono" runat="server" Width="169px" Height="16px" AutoCompleteType="Disabled" onkeypress="return fecha(event)" onpaste="return false"></asp:TextBox>
                    </td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style33">
                &nbsp;</td>
        </tr>
    </table>
    <p class="auto-style1">
        Resultados</p>
    <table class="auto-style24">
        <tr>
            <td class="auto-style33">Costes iniciales Emisor:</td>
            <td class="auto-style33">
                <asp:Label ID="lblCostesInicialesEmisor_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
            <td class="auto-style33">Convexidad:</td>
            <td class="auto-style33">
                <asp:Label ID="lblConvexidad_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">Costes iniales Bonista:</td>
            <td class="auto-style33">&nbsp;<asp:Label ID="lblCostesInicialesBonista_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
            <td class="auto-style33">Total:</td>
            <td class="auto-style33">
                <asp:Label ID="lblTotal_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">Precio Actual:</td>
            <td class="auto-style33">
                <asp:Label ID="lblPrecioActual_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
            <td class="auto-style33">TCEA Emisor:</td>
            <td class="auto-style33">
                <asp:Label ID="lblTCEAEmisor_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">Utilidad / Perdida:</td>
            <td class="auto-style33">
                <asp:Label ID="lblUtilidadPerdida_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
            <td class="auto-style33">TCEA Emisor c/ Escudo:</td>
            <td class="auto-style33">
                <asp:Label ID="lblTCEAEmisorConEscudo_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">Duracion:</td>
            <td class="auto-style33">
                <asp:Label ID="lblDuracion_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
            <td class="auto-style33">TREA Bonista:</td>
            <td class="auto-style33">
                <asp:Label ID="lblTREABonista_EmitirBono" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
    </table>
    <p class="auto-style1">
        Informacion del Bono</p>
        <table class="auto-style5">
            <tr>
                <td class="auto-style4">Nombre del Bono:</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNombreBono_EmitirBono" runat="server" Width="256px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Descripcion:</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtDescripcionBono_EmitirBono" runat="server" Height="54px" Width="554px" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
            </tr>
        </table>
        <center>
            <asp:Button ID="btnCalcular_EmitirBono" runat="server" Text="Calcular" OnClick="btnCalcular_EmitirBono_Click" />
            <asp:Button ID="btnConfirmar_EmitirBono" runat="server" Text="Confirmar" OnClick="btnConfirmar_EmitirBono_Click" />
            <asp:Button ID="btnVerTabla_EmitirBono" runat="server" Text="Ver Tabla" OnClick="btnVerTabla_EmitirBono_Click" />
        </center>
        
    <p class="auto-style1">
        Tabla del Bono</p>
        <center>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowDataBound="GridView1_RowDataBound">
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
