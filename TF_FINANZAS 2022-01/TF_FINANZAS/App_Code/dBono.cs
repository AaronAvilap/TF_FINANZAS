using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TF_FINANZAS.App_Code
{
    public class dBono
    {
        Database db = new Database();

        public string InsertarBono(eBono o)
        {
            try
            {
                SqlConnection con = db.ConectaDb();
                string insertarbono = "Agregar_Bono";
                SqlCommand cmd = new SqlCommand(insertarbono, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_usuario", o.id_usuario);
                cmd.Parameters.AddWithValue("@name", o.name);
                cmd.Parameters.AddWithValue("@descripcion", o.descripcion);
                cmd.Parameters.AddWithValue("@1", o.metodo_pago);
                cmd.Parameters.AddWithValue("@2", o.ValorNominal);
                cmd.Parameters.AddWithValue("@3", o.ValorComercial);
                cmd.Parameters.AddWithValue("@4", o.Años);
                cmd.Parameters.AddWithValue("@5", o.FrecuenciaCupon);
                cmd.Parameters.AddWithValue("@6", o.DiasxAño);
                cmd.Parameters.AddWithValue("@7", o.TipoTasa);
                cmd.Parameters.AddWithValue("@8", o.Capitalizacion);
                cmd.Parameters.AddWithValue("@9", o.TasaInteres);
                cmd.Parameters.AddWithValue("@10", o.TasaAnualDescuento);
                cmd.Parameters.AddWithValue("@11", o.ImpuestoRenta);
                cmd.Parameters.AddWithValue("@12", o.FechaEmision);
                cmd.Parameters.AddWithValue("@13", o.PrimaPorcentaje);
                cmd.Parameters.AddWithValue("@14", o.CostosEmisorPorcentaje);
                cmd.Parameters.AddWithValue("@15", o.CostosBonistaPorcentaje);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return "Insertado";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                db.DesconectaDb();
            }
        }

        public DataTable ListarBono(int code)
        {
            DataTable tabla = new DataTable();
            try
            {
                SqlConnection con = db.ConectaDb();
                string show = "Mostrar_Bono";
                SqlCommand cmd = new SqlCommand(show, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@code_usuario", code);
                SqlDataReader reader = cmd.ExecuteReader();
                tabla.Load(reader);
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                db.DesconectaDb();
            }
            return tabla;

            //SqlConnection con = db.ConectaDb();
            //SqlDataAdapter cmd = new SqlDataAdapter("select name_bono as 'Nombre Bono', metodo_pago as 'Metodo', frecuencia_cupon as 'Frecuencia Cupon', tipo_tasa_interes as 'Tipo Tasa Interes', capitalizacion as 'Capitalizacion', tasa_interes as 'Tasa de Interes', tasa_anual_dct as 'Tasa Anual de dct.', imp_renta as 'Impuesto de Renta', fecha_emision as 'Fecha de Emisión' from Bono" , con);
            //DataSet datos = new DataSet();
            //cmd.Fill(datos);
            //return datos;
        }

    }
}