using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS
{
    public partial class Login : System.Web.UI.Page
    {
        nUsuario nusuario = new nUsuario();
        protected void btn_registrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btn_iniciar_sesion_Click(object sender, EventArgs e)
        {
            if(nusuario.IngresarLogin(txtCorreo_Login.Text.Trim(), txtContrasenia_Login.Text) == true)
            {
                Session["usuario_correo"] = txtCorreo_Login.Text.Trim();
                Session["usuario_cont"] = txtContrasenia_Login.Text;
                Response.Redirect("Principal.aspx");
            }
            else
            {
                string msg = "Credenciales Incorrectas";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('" + msg + "');", true);
            }

        }

        protected void btn_recuperar_contrasenia_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecuperarContrasenia.aspx");
        }
    }
}