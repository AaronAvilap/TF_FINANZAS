using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS
{
    public partial class Principal : System.Web.UI.Page
    {
        nBono config_bono = new nBono();
        nUsuario auxusuario = new nUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario_correo"] != null && Session["usuario_cont"]!= null)
            {
                
                GridView1.DataSource = config_bono.ListarBonos(auxusuario.Obtener_id(Session["usuario_correo"].ToString(), Session["usuario_cont"].ToString()));
                GridView1.DataBind();
            }
        }

        protected void btnProyeccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProyeccionBono.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnEmitir_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmitirBono.aspx");
        }
    }
}