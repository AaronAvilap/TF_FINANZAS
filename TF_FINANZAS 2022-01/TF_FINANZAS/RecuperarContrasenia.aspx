<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContrasenia.aspx.cs" Inherits="TF_FINANZAS.RecuperarContrasenia" %>

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
    </script>
    <style type="text/css">
        body{
            background: url(imagenes/fondomodif.jpg);
            background-size:100% 100%;
            background-attachment: fixed ;
        }
        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 49%;
        }
        recuperar{
            border-radius: 5px;
            padding: 17px;
            width: 800px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .auto-style3 {
            width: 185px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<recuperar>
    <body>
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
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style3">DNI:</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtDNI_RecuperarContra" runat="server" Width="252px" onkeypress="return solonumeroscoma(event)" onpaste="return false" MaxLength ="8" MinLength="8" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Correo electronico:</td>
                            <td>
                                <asp:TextBox ID="txtCorreo_RecuperarContra" runat="server" Width="252px" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Nueva contrasenia:</td>
                            <td>
                                <asp:TextBox ID="txtContrasenia_RecuperarContra" runat="server" Width="252px" type="password" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Repita la contrasenia:</td>
                            <td>
                                <asp:TextBox ID="txtContraRepita_RecuperarContra" runat="server" Width="252px" type="password" AutoCompleteType="Disabled"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <asp:Button ID="btnConfirmar_RecuperarContra" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />
            </center>
        </form>
    </body>
</recuperar>
</html>
