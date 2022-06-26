<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProyeccionBono.aspx.cs" Inherits="TF_FINANZAS.ProyeccionBono" %>

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
        <style type="text/css">
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
                margin-left: 0px;
                margin-bottom: 0px;
            }
            .auto-style4 {
                width: 714px;
            }
            .auto-style5 {
                width: 223px;
                height: 28px;
            }
            .auto-style6 {
                width: 714px;
                height: 28px;
            }
            .auto-style7 {
                width: 223px;
                font-size: 20px;
            }
            .auto-style15 {
                width: 228px;
                font-size: 20px;
            }
            .auto-style18 {
                width: 359px;
                font-size: 20px;
            }
            .auto-style21 {
                width: 357px;
                font-size: 20px;
            }
            .auto-style22 {
                width: 226px;
                font-size: 20px;
            }
            .auto-style29 {
                width: 378px;
                height: 28px;
            }
            .auto-style30 {
                width: 378px;
            }
            .auto-style31 {
                width: 383px;
            }
            .auto-style32 {
                width: 387px;
            }
            .auto-style33 {
                width: 386px;
            }
            .auto-style36 {
                width: 617px;
            }
            .auto-style37 {
                width: 620px;
            }
            .auto-style38 {
                width: 378px;
                font-size: 20px;
            }
            .auto-style41 {
                width: 717px;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Zizou Slab Bold'; font-size: 46px; font-style: normal; font-weight: 100">
            Proyeccion de Bono<br />
            <image src="imagenes/as.png"></image>
        </div>
        <center>
             <asp:Button class="Button1" runat="server" Text="Regresar" Width="173px" ID="btnRegresar_ProyeccBono" OnClick="btnRegresar_Click" />
             <asp:Button class="Button2" runat="server" Text="Emitir un Bono" Width="173px" ID="btnEmitir_ProyeccBono" OnClick="btnEmitir_Click" />
             <asp:Button class="Button3" runat="server" Text="Cerrar Sesion" Width="173px" ID="btnCerrarSesion_ProyeccBono" OnClick="btnCerrar_Click" />
        </center>
           <br />
           <br />
    <p class="auto-style1">
            Datos de Entrada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resultados <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
        <asp:Label ID="Label1" runat="server" Text="Metodo de Pago:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="cmbMetodoDePago_ProyeccBono" runat="server" Height="21px" Width="261px" OnSelectedIndexChanged="cmbMetodo_SelectedIndexChanged">
                            <asp:ListItem>Aleman</asp:ListItem>
                            <asp:ListItem>Frances</asp:ListItem>
                            <asp:ListItem>Americano</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style29">
        <asp:Label ID="Label2" runat="server" Text="Frecuencia del cupon:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style6" id="lblFrecuenciaCupon">
                        <asp:Label ID="lblFrecuenciaCupon_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Valor Nominal:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtValorNominal_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" EnableViewState="False" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label3" runat="server" Text="Dias Capitalizacion:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblDiasCapitalizacion_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Valor Comercial:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtValorComercial_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>

                </              <asp:TextBox ID="txtNumeroAnios_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label4" runat="server" Text="# Periodos por anio:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4" id="lblPeriodosporAnio">
                        <asp:Label ID="lblPeriodoAnio_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Frecuencia de cupon:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="cmbFrecuenciaCupon_ProyeccBono" runat="server" Height="21px" Width="261px" OnSelectedIndexChanged="cmbMetodo_SelectedIndexChanged">
                            <asp:ListItem>Mensual</asp:ListItem>
                            <asp:ListItem>Bimestral</asp:ListItem>
                            <asp:ListItem>Trimestral</asp:ListItem>
                            <asp:ListItem>Cuatrimestral</asp:ListItem>
                            <asp:ListItem>Semestral</asp:ListItem>
                            <asp:ListItem>Anual</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label5" runat="server" Text="# Total de Periodos:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTotalPeriodos_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Dias por Anio:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="cmbDiasXAnio_ProyeccBono" runat="server" Height="21px" Width="261px" OnSelectedIndexChanged="cmbMetodo_SelectedIndexChanged">
                            <asp:ListItem>360</asp:ListItem>
                            <asp:ListItem>365</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label6" runat="server" Text="Tasa Efectiva Anual:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTEA_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tipo de tasa de interes:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="cmbTipoTasaInteres_ProyeccBono" runat="server" Height="21px" Width="261px" OnSelectedIndexChanged="cmbMetodo_SelectedIndexChanged">
                            <asp:ListItem>Nominal</asp:ListItem>
                            <asp:ListItem>Efectiva</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label7" runat="server" Text="Tasa Efectiva (MODIFICA)"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTEP_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Capitalizacion:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="cmbCapitalizacion_ProyeccBono" runat="server" Height="21px" Width="261px" OnSelectedIndexChanged="cmbMetodo_SelectedIndexChanged">
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
                    <td class="auto-style38">
                        COK(MODIFICA)</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblCOKP_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tasa de interes:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTasaInteres_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label9" runat="server" Text="Costes Iniciales-Emisor:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblCostesInicialesEmisor_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tasa anual de descuento:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTasaAnualDescuento_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label10" runat="server" Text="Costes Iniciales-Bonista:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblCostesInicialesBonista_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Impuesto a la renta:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtImpuestoRenta_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label11" runat="server" Text="Precio Actual:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblPrecioActual_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Fecha Emision:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtFechaEmision_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return fecha(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label12" runat="server" Text="Utilidad/Perdida:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblUtilidadPerdida_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">% Prima:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPorcentPrima_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
        <asp:Label ID="Label13" runat="server" Text="Duracion:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblDuracion_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style7">% Estructuracion:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPorcentEstructuracion_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style31">
        <asp:Label ID="Label14" runat="server" Text="Convexidad:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblConvexidad_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style22">% Colocacion:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="txtPorcentColocacion_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style32">
        <asp:Label ID="Label15" runat="server" Text="Total:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTotal_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">% Flotacion:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="txtPorcentFlotacion_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style32">
        <asp:Label ID="Label16" runat="server" Text="Duracion modificada:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblDuracionModificada_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style15">% CAVALI:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="txtPorcentCavali_ProyeccBono" runat="server" CssClass="auto-style3" Width="254px" Height="16px" AutoCompleteType="Disabled" onkeypress="return solonumeroscoma(event)" onpaste="return false"></asp:TextBox>
                    </td>
                    <td class="auto-style32">
        <asp:Label ID="Label17" runat="server" Text="TCEA-Emisor:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTCEAEmisor_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style37">
                        &nbsp;</td>
                    <td class="auto-style33">
        <asp:Label ID="Label18" runat="server" Text="TCEA-Emisor c/escudo:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTCEAEmisiorConEscudo_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style36">
                        &nbsp;</td>
                    <td class="auto-style31">
        <asp:Label ID="Label19" runat="server" Text="TREA-Bonista:"  Font-Size= "20px" ></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblTREABonista_ProyeccBono" runat="server" Text="-" Font-Size= "20px" ></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <center>
             <asp:Button class="Button2" runat="server" Text="Calcular" Width="173px" ID="btnCalcularProyeccion" OnClick="btnCalcularProyeccion_Click" />
            </center>        
        </p>
    </form>
    </body>
</html>
