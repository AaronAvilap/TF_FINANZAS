<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TF_FINANZAS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function solonumeroscoma(e) {
            key = e.keyCode || e.which;
            teclado = String.fromCharCode(key);
            numeros = "0123456789"; //array
            especiales = "8-37-39-46" //retroceso-izq-der-suprimir-
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
        function sololetras(e) {
            key = e.keyCode || e.which;
            teclado = String.fromCharCode(key);
            letras = "qwertyuiopasdfghjklñzxcvbnmQWERTYUIOPASDFGHJKLÑZXCVBNM"; //array
            especiales = "8-37-39-46" //retroceso-izq-der-suprimir-
            teclado_especial = false;
            for (var i in especiales) {
                if (key == especiales[i]) {
                    teclado_especial = true;
                }
            }
            if (letras.indexOf(teclado) == -1 && !teclado_especial) {
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
            width: 88px;
        }
        .auto-style2 {
            width: 88px;
            height: 2px;
        }
        .auto-style3 {
            height: 2px;
        }
        .auto-style4 {
            width: 53%;
        }
        registro{
            border-radius: 5px;
            padding: 17px;
            width: 800px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<registro>
<body style="width: 987px; height: 282px">
        <center>
        <div style="font-family: 'Zizou Slab Bold'; font-size: 46px; font-style: normal; font-weight: 100">
                    <br />
                    Recuperar contraseña<br />
                    <image src="imagenes/as.png"></image>
        </div>
    </center>
    <form id="form1" runat="server">
        <center>
            <div>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style1">Nombre:</td>
                        <td>
                            <asp:TextBox ID="txtNombre_Registro" runat="server" Width="246px" onkeypress="return sololetras(event)" onpaste="return false" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Apellido:</td>
                        <td>
                            <asp:TextBox ID="txtApellido_Registro" runat="server" Width="246px" onkeypress="return sololetras(event)" onpaste="return false" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">DNI:</td>
                        <td>
                            <asp:TextBox ID="txtDNI_Registro" runat="server" Width="246px" onkeypress="return solonumeroscoma(event)" onpaste="return false" MaxLength ="8" MinLength="8" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Correo:</td>
                        <td>
                            <asp:TextBox ID="txtCorreo_Registro" runat="server" Width="246px" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Contrasenia:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtContrasenia_Registro" runat="server" Width="246px" type="password" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Button ID="btnRegistrar_Registro" runat="server" OnClick="btnAgregar_Click" Text="Registrar" />
    </center>
    </form>
    </body>
</registro>
</html>
&nbsp;