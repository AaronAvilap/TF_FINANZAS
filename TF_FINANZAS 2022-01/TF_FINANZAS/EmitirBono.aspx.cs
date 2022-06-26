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
    public partial class EmitirBono : System.Web.UI.Page
    {
        eBono bono = new eBono();
        nBono conf_bono = new nBono();
        nUsuario auxusuario = new nUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProyeccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProyeccionBono.aspx");
        }

        protected void btnRegresarPrin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnConfirmar_EmitirBono_Click(object sender, EventArgs e)
        {
            if(cmbMetodoPago_EmitirBono.SelectedIndex != -1 && txtValorNominal_EmitirBono.Text != "" && txtValorComercial_EmitirBono.Text != "" && txtNumeroAnios_EmitirBono.Text != "" &&
                cmbFrecuenciaCupon_EmitirBono.SelectedIndex != -1 && cmbDiasXAnio_EmitirBono.SelectedIndex != -1 && cmbTipoTasaInteres_EmitirBono.SelectedIndex != -1 && cmbCapitalizacion_EmitirBono.SelectedIndex != -1 &&
                txtTasaInteres_EmitirBono.Text != "" && txtTasaAnualDesc_EmitirBono.Text != "" && txtImpuestoRenta_EmitirBono.Text != "" && txtFechaEmision_EmitirBono.Text != "" && txtPorcentPrima_EmitirBono.Text != "" &&
                txtPorcentEstructuracion_EmitirBono.Text != "" && txtPorcentColocacion_EmitirBono.Text != "" && txtPorcentFlotacion_EmitirBono.Text != "" && txtPorcentCAVALI_EmitirBono.Text != "" &&
                txtNombreBono_EmitirBono.Text != "" && txtDescripcionBono_EmitirBono.Text != "")
            {
                conf_bono.registrarBono(auxusuario.Obtener_id(Session["usuario_correo"].ToString(), Session["usuario_cont"].ToString()), Convert.ToString(txtNombreBono_EmitirBono.Text), Convert.ToString(txtDescripcionBono_EmitirBono.Text), Convert.ToString(cmbMetodoPago_EmitirBono.SelectedItem.Text), float.Parse(txtValorNominal_EmitirBono.Text), float.Parse(txtValorComercial_EmitirBono.Text), Convert.ToInt32(txtNumeroAnios_EmitirBono.Text), Convert.ToString(cmbFrecuenciaCupon_EmitirBono.SelectedItem.Text),
                Convert.ToInt32(cmbDiasXAnio_EmitirBono.SelectedItem.Text), Convert.ToString(cmbTipoTasaInteres_EmitirBono.SelectedItem.Text.Trim()), Convert.ToString(cmbCapitalizacion_EmitirBono.SelectedItem.Text), float.Parse(txtTasaInteres_EmitirBono.Text), float.Parse(txtTasaAnualDesc_EmitirBono.Text),
                float.Parse(txtImpuestoRenta_EmitirBono.Text), Convert.ToDateTime(txtFechaEmision_EmitirBono.Text), float.Parse(txtPorcentPrima_EmitirBono.Text), float.Parse(txtPorcentEstructuracion_EmitirBono.Text) + float.Parse(txtPorcentColocacion_EmitirBono.Text) + float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text), float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text));
            }
            else
            {
                string msg = "Rellene todos los campos";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                    "alert('" + msg + "');", true);
            }
        }


        protected void btnCalcular_EmitirBono_Click(object sender, EventArgs e)
        {
            if (Session["usuario_correo"] != null && Session["usuario_cont"] != null)
            {
                if (cmbMetodoPago_EmitirBono.SelectedIndex != -1 && txtValorNominal_EmitirBono.Text != "" && txtValorComercial_EmitirBono.Text != "" && txtNumeroAnios_EmitirBono.Text != "" &&
                    cmbFrecuenciaCupon_EmitirBono.SelectedIndex != -1 && cmbDiasXAnio_EmitirBono.SelectedIndex != -1 && cmbTipoTasaInteres_EmitirBono.SelectedIndex != -1 && cmbCapitalizacion_EmitirBono.SelectedIndex != -1 &&
                    txtTasaInteres_EmitirBono.Text != "" && txtTasaAnualDesc_EmitirBono.Text != "" && txtImpuestoRenta_EmitirBono.Text != "" && txtFechaEmision_EmitirBono.Text != "" && txtPorcentPrima_EmitirBono.Text != "" &&
                    txtPorcentEstructuracion_EmitirBono.Text != "" && txtPorcentColocacion_EmitirBono.Text != "" && txtPorcentFlotacion_EmitirBono.Text != "" && txtPorcentCAVALI_EmitirBono.Text != "" && txtNombreBono_EmitirBono.Text != ""
                    && txtDescripcionBono_EmitirBono.Text != "")
                {
                    bono.SetDatosIniciales_Emitir(auxusuario.Obtener_id(Session["usuario_correo"].ToString(), Session["usuario_cont"].ToString()), Convert.ToString(txtNombreBono_EmitirBono.Text), Convert.ToString(txtDescripcionBono_EmitirBono.Text), Convert.ToString(cmbMetodoPago_EmitirBono.SelectedItem.Text), float.Parse(txtValorNominal_EmitirBono.Text), float.Parse(txtValorComercial_EmitirBono.Text), Convert.ToInt32(txtNumeroAnios_EmitirBono.Text), Convert.ToString(cmbFrecuenciaCupon_EmitirBono.SelectedItem.Text),
                    Convert.ToInt32(cmbDiasXAnio_EmitirBono.SelectedItem.Text), Convert.ToString(cmbTipoTasaInteres_EmitirBono.SelectedItem.Text.Trim()), Convert.ToString(cmbCapitalizacion_EmitirBono.SelectedItem.Text), float.Parse(txtTasaInteres_EmitirBono.Text), float.Parse(txtTasaAnualDesc_EmitirBono.Text),
                    float.Parse(txtImpuestoRenta_EmitirBono.Text), Convert.ToDateTime(txtFechaEmision_EmitirBono.Text), float.Parse(txtPorcentPrima_EmitirBono.Text), float.Parse(txtPorcentEstructuracion_EmitirBono.Text) + float.Parse(txtPorcentColocacion_EmitirBono.Text) + float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text), float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text));
                    lblCostesInicialesEmisor_EmitirBono.Text = Convert.ToString(Math.Round(bono.CostosEmisor, 2));
                    lblCostesInicialesBonista_EmitirBono.Text = Convert.ToString(Math.Round(bono.CostosBonista, 2));
                    lblPrecioActual_EmitirBono.Text = Convert.ToString(Math.Round(bono.VAN, 2));
                    lblUtilidadPerdida_EmitirBono.Text = Convert.ToString(Math.Round(bono.Utilidad, 2));
                    lblDuracion_EmitirBono.Text = Convert.ToString(Math.Round(bono.Duracion, 2));
                    lblConvexidad_EmitirBono.Text = Convert.ToString(Math.Round(bono.Convexidad, 2));
                    lblTotal_EmitirBono.Text = Convert.ToString(Math.Round(bono.Duracion + bono.Convexidad, 2));
                    lblTREABonista_EmitirBono.Text = Convert.ToString(Math.Round(bono.TREA_BONISTA * 100, 5) + "%");

                    lblTCEAEmisor_EmitirBono.Text = Convert.ToString(Math.Round(bono.TCEA_EMISOR * 100, 5) + "%");
                    lblTCEAEmisorConEscudo_EmitirBono.Text = Convert.ToString(Math.Round(bono.TCEA_EMISOR_ESCD * 100, 5) + "%");

                    if (bono.Utilidad < 0)
                    {
                        lblUtilidadPerdida_EmitirBono.Text = Convert.ToString(Math.Round(bono.Utilidad, 2) * -1);
                        lblUtilidadPerdida_EmitirBono.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                        lblUtilidadPerdida_EmitirBono.ForeColor = System.Drawing.Color.Blue;
                    if (bono.VAN < 0)
                    {
                        lblPrecioActual_EmitirBono.Text = Convert.ToString(Math.Round(bono.VAN + bono.ValorComercial, 2));
                        lblPrecioActual_EmitirBono.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                        lblPrecioActual_EmitirBono.ForeColor = System.Drawing.Color.Blue;


                }
                else
                {
                    string msg = "Rellene todos los campos";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                        "alert('" + msg + "');", true);
                }
            }
        }

        protected void btnVerTabla_EmitirBono_Click(object sender, EventArgs e)
        {
            bono.SetDatosIniciales_Emitir(auxusuario.Obtener_id(Session["usuario_correo"].ToString(), Session["usuario_cont"].ToString()), Convert.ToString(txtNombreBono_EmitirBono.Text), Convert.ToString(txtDescripcionBono_EmitirBono.Text), Convert.ToString(cmbMetodoPago_EmitirBono.SelectedItem.Text), float.Parse(txtValorNominal_EmitirBono.Text), float.Parse(txtValorComercial_EmitirBono.Text), Convert.ToInt32(txtNumeroAnios_EmitirBono.Text), Convert.ToString(cmbFrecuenciaCupon_EmitirBono.SelectedItem.Text),
                Convert.ToInt32(cmbDiasXAnio_EmitirBono.SelectedItem.Text), Convert.ToString(cmbTipoTasaInteres_EmitirBono.SelectedItem.Text.Trim()), Convert.ToString(cmbCapitalizacion_EmitirBono.SelectedItem.Text), float.Parse(txtTasaInteres_EmitirBono.Text), float.Parse(txtTasaAnualDesc_EmitirBono.Text),
                float.Parse(txtImpuestoRenta_EmitirBono.Text), Convert.ToDateTime(txtFechaEmision_EmitirBono.Text), float.Parse(txtPorcentPrima_EmitirBono.Text), float.Parse(txtPorcentEstructuracion_EmitirBono.Text) + float.Parse(txtPorcentColocacion_EmitirBono.Text) + float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text), float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text));
            DataTable dt = new DataTable();
            dt.Columns.Add("Fecha");
            dt.Columns.Add("Periodo");
            dt.Columns.Add("Amortizacion");
            dt.Columns.Add("Interes");
            dt.Columns.Add("Renta");
            dt.Columns.Add("Escudo");
            dt.Columns.Add("Flujo Emisor");
            dt.Columns.Add("Flujo Emisor Escudo");
            dt.Columns.Add("Flujo Bonista");
            dt.Columns.Add("Flujo Actual");
            dt.Columns.Add("Flujo Actual Plazo");
            dt.Columns.Add("Factor Convexidad");
            foreach (var item in bono.Detalle)
            {
                DataRow row = dt.NewRow();
                dt.Rows.Add(item.Fecha, item.Periodo, item.Amortizacion, item.Interes, item.Renta,
                    item.Escudo, item.FlujoEmisor, item.FlujoEmisorEscudo, item.FlujoBonista,
                    item.FlujoActual, item.FlujoActualPlazo, item.FactorConvexidad);
            }
            this.GridView1.DataSource = dt;
            this.GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                bono.SetDatosIniciales_Emitir(auxusuario.Obtener_id(Session["usuario_correo"].ToString(), Session["usuario_cont"].ToString()), Convert.ToString(txtNombreBono_EmitirBono.Text), Convert.ToString(txtDescripcionBono_EmitirBono.Text), Convert.ToString(cmbMetodoPago_EmitirBono.SelectedItem.Text), float.Parse(txtValorNominal_EmitirBono.Text), float.Parse(txtValorComercial_EmitirBono.Text), Convert.ToInt32(txtNumeroAnios_EmitirBono.Text), Convert.ToString(cmbFrecuenciaCupon_EmitirBono.SelectedItem.Text),
                    Convert.ToInt32(cmbDiasXAnio_EmitirBono.SelectedItem.Text), Convert.ToString(cmbTipoTasaInteres_EmitirBono.SelectedItem.Text.Trim()), Convert.ToString(cmbCapitalizacion_EmitirBono.SelectedItem.Text), float.Parse(txtTasaInteres_EmitirBono.Text), float.Parse(txtTasaAnualDesc_EmitirBono.Text),
                    float.Parse(txtImpuestoRenta_EmitirBono.Text), Convert.ToDateTime(txtFechaEmision_EmitirBono.Text), float.Parse(txtPorcentPrima_EmitirBono.Text), float.Parse(txtPorcentEstructuracion_EmitirBono.Text) + float.Parse(txtPorcentColocacion_EmitirBono.Text) + float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text), float.Parse(txtPorcentFlotacion_EmitirBono.Text) + float.Parse(txtPorcentCAVALI_EmitirBono.Text));
                DataTable dt = new DataTable();
                dt.Columns.Add("Fecha");
                dt.Columns.Add("Periodo");
                dt.Columns.Add("Amortizacion");
                dt.Columns.Add("Interes");
                dt.Columns.Add("Renta");
                dt.Columns.Add("Escudo");
                dt.Columns.Add("Flujo Emisor");
                dt.Columns.Add("Flujo Emisor Escudo");
                dt.Columns.Add("Flujo Bonista");
                dt.Columns.Add("Flujo Actual");
                dt.Columns.Add("Flujo Actual Plazo");
                dt.Columns.Add("Factor Convexidad");
                foreach (var item in bono.Detalle)
                {
                    DataRow row = dt.NewRow();
                    dt.Rows.Add(item.Fecha, item.Periodo, item.Amortizacion, item.Interes, item.Renta,
                        item.Escudo, item.FlujoEmisor, item.FlujoEmisorEscudo, item.FlujoBonista,
                        item.FlujoActual, item.FlujoActualPlazo, item.FactorConvexidad);
                    int periodo = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Periodo").ToString());
                    float flujoemisor = float.Parse(DataBinder.Eval(e.Row.DataItem, "Flujo Emisor").ToString());
                    float flujoemisor_esc = float.Parse(DataBinder.Eval(e.Row.DataItem, "Flujo Emisor Escudo").ToString());
                    float flujobonista = float.Parse(DataBinder.Eval(e.Row.DataItem, "Flujo Bonista").ToString());
                    for (int t = 0; t <= bono.Periodos; t++)
                    {
                        if (periodo > 0)
                        {
                            e.Row.Cells[3].ForeColor = System.Drawing.Color.Red;
                            e.Row.Cells[4].ForeColor = System.Drawing.Color.Red;
                            e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
                            e.Row.Cells[5].ForeColor = System.Drawing.Color.Blue;
                            e.Row.Cells[6].ForeColor = System.Drawing.Color.Red;
                            e.Row.Cells[7].ForeColor = System.Drawing.Color.Red;
                            e.Row.Cells[8].ForeColor = System.Drawing.Color.Blue;
                            e.Row.Cells[9].ForeColor = System.Drawing.Color.Blue;
                            e.Row.Cells[10].ForeColor = System.Drawing.Color.Blue;
                            e.Row.Cells[11].ForeColor = System.Drawing.Color.Blue;
                            
                        }
                        if (flujoemisor == bono.ValorComercial-bono.CostosEmisor)
                        {
                            e.Row.Cells[6].ForeColor = System.Drawing.Color.Blue;
                        }
                        if(flujoemisor == flujoemisor_esc)
                        {
                            e.Row.Cells[7].ForeColor = System.Drawing.Color.Blue;
                        }
                        if(flujobonista == ((-1 * bono.ValorComercial) - bono.CostosBonista))
                        {
                            e.Row.Cells[8].ForeColor = System.Drawing.Color.Red;
                        }

                    }
                }
            }
        }
    }
}