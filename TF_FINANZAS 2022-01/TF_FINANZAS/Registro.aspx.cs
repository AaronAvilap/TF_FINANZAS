using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        nUsuario nusuario = new nUsuario();
        
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (txtNombre_Registro.Text != "" && txtApellido_Registro.Text != "" && txtDNI_Registro.Text != "" && txtCorreo_Registro.Text != "" && txtContrasenia_Registro.Text != "")
            {
                nusuario.RegistrarUsuario(txtNombre_Registro.Text.Trim(), txtApellido_Registro.Text.Trim(), Convert.ToInt32(txtDNI_Registro.Text.Trim()), txtCorreo_Registro.Text.Trim(), txtContrasenia_Registro.Text);
                Response.Redirect("Login.aspx");
                limpiar();
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
            txtNombre_Registro.Text = "";
            txtApellido_Registro.Text = "";
            txtDNI_Registro.Text = "";
            txtCorreo_Registro.Text = "";
            txtContrasenia_Registro.Text = "";
        }


    }
}