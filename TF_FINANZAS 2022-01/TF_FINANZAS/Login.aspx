<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TF_FINANZAS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background: url(imagenes/fondomodif.jpg);
            background-size:100% 100%;
            background-attachment: fixed ;
        }
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 63%;
        }
        .auto-style3 {
            width: 820px;
            height: 236px;
        }
        login{
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
<body>
    <center>
        <div style="font-family: 'Zizou Slab Bold'; font-size: 46px; font-style: normal; font-weight: 100">
                    <br />
                    Bonos Web - Grupo 02<br />
                    <image src="imagenes/as.png"></image>
        </div>
    </center>
    <center>
        <login>
            <form id="form1" runat="server" class="auto-style3">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style1">Correo Electronico:</td>
                        <td>
                            <asp:TextBox ID="txtCorreo_Login" runat="server" Width="271px" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Contrasenia:</td>
                        <td>
                            <asp:TextBox ID="txtContrasenia_Login" runat="server" Width="272px" type="password" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnIniciarSesion_Login" runat="server" Text="Iniciar sesion" Width="145px" OnClick="btn_iniciar_sesion_Click" />
                <p>
                    <asp:Button ID="btnRegistrarseAqui_Login" runat="server" Text="Registrase Aqui" Width="145px" OnClick="btn_registrarse_Click" />
                </p>
                <asp:Button ID="btnRecuperarContrasenia_Login" runat="server" Text="Recuperar Contrasenia" Width="159px" BackColor="#87B4D3" BorderStyle="None" OnClick="btn_recuperar_contrasenia_Click" Font-Bold="True" Font-Size="Small" />
            </form>
        </login>
    </center>
</body>
</html>
