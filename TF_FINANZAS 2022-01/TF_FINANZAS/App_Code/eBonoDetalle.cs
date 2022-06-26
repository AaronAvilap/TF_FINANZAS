using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TF_FINANZAS.App_Code
{
    public class eBonoDetalle
    {
        public DateTime Fecha { get; set; }
        public int Periodo { get; set; }
        public float Amortizacion { get; set; }
        public float Interes { get; set; }
        public float Renta { get; set; }
        public float Escudo { get; set; }

        public float FlujoEmisor { get; set; }
        public float FlujoEmisorEscudo { get; set; }
        public float FlujoBonista { get; set; }
        public float FlujoActual { get; set; }
        public float FlujoActualPlazo { get; set; }
        public float FactorConvexidad { get; set; }

    }
}