using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS
{
    public partial class ProyeccionBono : System.Web.UI.Page
    {
        eBono bono = new eBono();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cmbMetodo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnEmitir_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmitirBono.aspx");
        }

        protected void btnCalcularProyeccion_Click(object sender, EventArgs e)
        {
            bono.SetDatosIniciales_Proyeccion(float.Parse(txtValorNominal_ProyeccBono.Text), float.Parse(txtValorComercial_ProyeccBono.Text), Convert.ToInt32(txtNumeroAnios_ProyeccBono.Text), Convert.ToString(cmbFrecuenciaCupon_ProyeccBono.SelectedItem.Text),
                Convert.ToInt32(cmbDiasXAnio_ProyeccBono.SelectedItem.Text), Convert.ToString(cmbTipoTasaInteres_ProyeccBono.SelectedItem.Text.Trim()), Convert.ToString(cmbCapitalizacion_ProyeccBono.SelectedItem.Text), float.Parse(txtTasaInteres_ProyeccBono.Text), float.Parse(txtTasaAnualDescuento_ProyeccBono.Text),
                float.Parse(txtImpuestoRenta_ProyeccBono.Text), Convert.ToDateTime(txtFechaEmision_ProyeccBono.Text), float.Parse(txtPorcentPrima_ProyeccBono.Text), float.Parse(txtPorcentEstructuracion_ProyeccBono.Text) + float.Parse(txtPorcentColocacion_ProyeccBono.Text) + float.Parse(txtPorcentFlotacion_ProyeccBono.Text) + float.Parse(txtPorcentCavali_ProyeccBono.Text), float.Parse(txtPorcentFlotacion_ProyeccBono.Text) + float.Parse(txtPorcentCavali_ProyeccBono.Text));
            lblFrecuenciaCupon_ProyeccBono.Text = Convert.ToString(bono.FrecuenciaCuponDias);
            lblDiasCapitalizacion_ProyeccBono.Text = Convert.ToString(bono.CapitalizacionDias);
            lblPeriodoAnio_ProyeccBono.Text = Convert.ToString(bono.Periodos/bono.Años);
            lblTotalPeriodos_ProyeccBono.Text = Convert.ToString(bono.Periodos);
            lblTEA_ProyeccBono.Text = Convert.ToString(Math.Round(bono.TasaEfectivaAnual * 100, 5)  + "%");
            lblTEP_ProyeccBono.Text = Convert.ToString(Math.Round(bono.TasaEfectivaPeriodo * 100, 5) + "%");
            lblCOKP_ProyeccBono.Text = Convert.ToString(Math.Round(bono.COK * 100, 5)  + "%");
            lblCostesInicialesEmisor_ProyeccBono.Text = Convert.ToString(Math.Round(bono.CostosEmisor, 2));
            lblCostesInicialesBonista_ProyeccBono.Text = Convert.ToString(Math.Round(bono.CostosBonista, 2));
            lblPrecioActual_ProyeccBono.Text = Convert.ToString(Math.Round(bono.VAN, 2));
            lblUtilidadPerdida_ProyeccBono.Text = Convert.ToString(Math.Round(bono.Utilidad, 2));
            lblDuracion_ProyeccBono.Text = Convert.ToString(Math.Round(bono.Duracion, 2));
            lblConvexidad_ProyeccBono.Text = Convert.ToString(Math.Round(bono.Convexidad, 2));
            lblTotal_ProyeccBono.Text = Convert.ToString(Math.Round(bono.Duracion + bono.Convexidad, 2));
            lblDuracionModificada_ProyeccBono.Text = Convert.ToString(Math.Round(bono.DuracionModificada, 2));
            lblTREABonista_ProyeccBono.Text = Convert.ToString(Math.Round(bono.TREA_BONISTA * 100, 5) + "%");
            lblTCEAEmisor_ProyeccBono.Text = Convert.ToString(Math.Round(bono.TCEA_EMISOR * 100, 5) + "%");
            lblTCEAEmisiorConEscudo_ProyeccBono.Text = Convert.ToString(Math.Round(bono.TCEA_EMISOR_ESCD * 100, 5) + "%");

            if (bono.Utilidad < 0)
            {
                lblUtilidadPerdida_ProyeccBono.Text = Convert.ToString(Math.Round(bono.Utilidad, 2) * -1);
                lblUtilidadPerdida_ProyeccBono.ForeColor = System.Drawing.Color.Red;
            }
            else
                lblUtilidadPerdida_ProyeccBono.ForeColor = System.Drawing.Color.Blue;
            if(bono.VAN < 0)
            {
                lblPrecioActual_ProyeccBono.Text = Convert.ToString(Math.Round(bono.VAN + bono.ValorComercial, 2));
                lblPrecioActual_ProyeccBono.ForeColor = System.Drawing.Color.Red;
            }
            else
                lblPrecioActual_ProyeccBono.ForeColor = System.Drawing.Color.Blue;
        }
    }
}