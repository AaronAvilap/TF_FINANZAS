using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS
{
    public partial class RecuperarContrasenia : System.Web.UI.Page
    {
        nUsuario nusuario = new nUsuario();

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (txtContrasenia_RecuperarContra.Text!="" && txtContraRepita_RecuperarContra.Text != "" && txtCorreo_RecuperarContra.Text!= "" && txtDNI_RecuperarContra.Text!= "") {
                if (txtContrasenia_RecuperarContra.Text == txtContraRepita_RecuperarContra.Text)
                {
                    if (nusuario.RestaurarContrasenia(Convert.ToInt32(txtDNI_RecuperarContra.Text.Trim()), txtCorreo_RecuperarContra.Text.Trim(), txtContrasenia_RecuperarContra.Text).ToString() == "Actualizado")
                    {
                        nusuario.RestaurarContrasenia(Convert.ToInt32(txtDNI_RecuperarContra.Text.Trim()), txtCorreo_RecuperarContra.Text.Trim(), txtContrasenia_RecuperarContra.Text);
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        string msg = "Este usuario no esta registrado";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                            "alert('" + msg + "');", true);
                        limpiar();
                    }
                    
                }
                else
                {
                    string msg = "Las contrasenias no coinciden";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                        "alert('" + msg + "');", true);
                    limpiar();
                }
            }
            else
            {
                string msg = "Por favor complete todos los campos";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('" + msg + "');", true);
                limpiar();
            }
        }

        private void limpiar()
        {
            txtContrasenia_RecuperarContra.Text = "";
            txtContraRepita_RecuperarContra.Text = "";
            txtCorreo_RecuperarContra.Text = "";
            txtDNI_RecuperarContra.Text = "";
        }
    }
}