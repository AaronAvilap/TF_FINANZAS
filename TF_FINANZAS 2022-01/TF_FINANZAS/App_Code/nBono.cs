using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace TF_FINANZAS.App_Code
{
    public class nBono
    {
        dBono bonoDatos;

        public nBono()
        {
            bonoDatos = new dBono();
        }

        public string registrarBono(int id_usuario, string name, string descp, string uno, float dos, float tres, int cuatro, string cinco,
            int seis, string siete, string ocho, float nueve, float diez, float once, DateTime doce, float trece
            , float catorce, float quince)
        {
            eBono bono = new eBono()
            {
                id_usuario = id_usuario,
                name = name,
                descripcion = descp,
                metodo_pago = uno,
                ValorNominal = dos,
                ValorComercial = tres,
                Años = cuatro,
                FrecuenciaCupon = cinco,
                DiasxAño = seis,
                TipoTasa = siete,
                Capitalizacion = ocho,
                TasaInteres = nueve,
                TasaAnualDescuento = diez,
                ImpuestoRenta = once,
                FechaEmision = doce,
                PrimaPorcentaje = trece,
                CostosEmisorPorcentaje = catorce,
                CostosBonistaPorcentaje = quince

            };
            return bonoDatos.InsertarBono(bono);
        }

        public DataTable ListarBonos(int code)
        {
            return bonoDatos.ListarBono(code);
        }
        
    }
}