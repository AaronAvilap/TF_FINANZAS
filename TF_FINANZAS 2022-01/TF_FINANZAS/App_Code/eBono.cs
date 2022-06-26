using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Bogus;
using Microsoft.VisualBasic;
using System.Numerics;


namespace TF_FINANZAS.App_Code
{
    
    public class eBono
    {
        
        public int CodigoBono { get; set; }
        public int id_usuario { get; set; }
        public string name { get; set; }
        public string descripcion { get; set; }

        public string metodo_pago { get; set; }
        public float ValorNominal { get; set; }
        public float ValorComercial { get; set; }
        public int Años { get; set; }
        public string FrecuenciaCupon { get; set; }
        public int DiasxAño { get; set; }
        public string TipoTasa { get; set; }
        public string Capitalizacion { get; set; }
        public float TasaInteres { get; set; }
        public float TasaAnualDescuento { get; set; }
        public float ImpuestoRenta { get; set; }
        public DateTime FechaEmision { get; set; }
        public float PrimaPorcentaje { get; set; }
        public float CostosEmisorPorcentaje { get; set; }
        public float CostosBonistaPorcentaje { get; set; }

        public int FrecuenciaCuponDias { get; set; }
        public int CapitalizacionDias { get; set; }
        public float Periodos { get; set; }
        public float TasaEfectivaAnual { get; set; }
        public float TasaEfectivaPeriodo { get; set; }
        public float COK { get; set; }
        public float CostosEmisor { get; set; }
        public float CostosBonista { get; set; }

        public double VAN { get; set; }
        public double Utilidad { get; set; }
        public double Duracion { get; set; }
        public double Convexidad { get; set; }
        public double DuracionModificada { get; set; }

        public double TIR_BONISTA { get; set; }
        public double TREA_BONISTA { get; set; }
        public double TIR_EMISOR { get; set; }
        public double TCEA_EMISOR { get; set; }
        public double TIR_EMISOR_ESCD { get; set; }
        public double TCEA_EMISOR_ESCD { get; set; }
        
        
        
        public List<eBonoDetalle> Detalle { get; set; }

        public override string ToString()
        {
            return Convert.ToString(CodigoBono);
        }

        //public string RegistrarBono()


        public void SetDatosIniciales_Proyeccion(float ValorNominal, float ValorComercial, int Años, string FrecuenciaCupon,
            int DiasxAño, string TipoTasa, string Capitalizacion, float TasaInteres,
            float TasaAnualDescuento, float ImpuestoRenta, DateTime FechaEmision, float PrimaPorcentaje, 
            float CostosEmisorPorcentaje, float CostosBonistaPorcentaje)
        {
            this.ValorNominal=ValorNominal;
            this.ValorComercial=ValorComercial;
            this.Años=Años;
            this.FrecuenciaCupon=FrecuenciaCupon;
            this.DiasxAño=DiasxAño;
            this.TipoTasa=TipoTasa;
            this.Capitalizacion=Capitalizacion;
            this.TasaInteres=TasaInteres/100;
            this.TasaAnualDescuento=TasaAnualDescuento/100;
            this.ImpuestoRenta=ImpuestoRenta/100;
            this.FechaEmision=FechaEmision;
            this.PrimaPorcentaje=PrimaPorcentaje/100;
            this.CostosEmisorPorcentaje=CostosEmisorPorcentaje/100;
            this.CostosBonistaPorcentaje=CostosBonistaPorcentaje/100;

            Detalle = new List<eBonoDetalle>();
            UpdateDatosResultantes();
        }

        public void SetDatosIniciales_Emitir(int id_usuario, string name, string descripcion, string metodo_pago, float ValorNominal, float ValorComercial, int Años, string FrecuenciaCupon,
            int DiasxAño, string TipoTasa, string Capitalizacion, float TasaInteres,
            float TasaAnualDescuento, float ImpuestoRenta, DateTime FechaEmision, float PrimaPorcentaje,
            float CostosEmisorPorcentaje, float CostosBonistaPorcentaje)
        {
            this.id_usuario = id_usuario;
            this.name = name;
            this.descripcion = descripcion;
            this.metodo_pago = metodo_pago;
            this.ValorNominal = ValorNominal;
            this.ValorComercial = ValorComercial;
            this.Años = Años;
            this.FrecuenciaCupon = FrecuenciaCupon;
            this.DiasxAño = DiasxAño;
            this.TipoTasa = TipoTasa;
            this.Capitalizacion = Capitalizacion;
            this.TasaInteres = TasaInteres / 100;
            this.TasaAnualDescuento = TasaAnualDescuento / 100;
            this.ImpuestoRenta = ImpuestoRenta / 100;
            this.FechaEmision = FechaEmision;
            this.PrimaPorcentaje = PrimaPorcentaje / 100;
            this.CostosEmisorPorcentaje = CostosEmisorPorcentaje / 100;
            this.CostosBonistaPorcentaje = CostosBonistaPorcentaje / 100;

            Detalle = new List<eBonoDetalle>();
            UpdateDatosResultantes();
        }

        public void UpdateDatosResultantes()
        {
            switch (FrecuenciaCupon)
            {
                case "Mensual": FrecuenciaCuponDias = 30;
                    break;
                case "Bimestral":
                    FrecuenciaCuponDias = 60;
                    break;
                case "Trimestral":
                    FrecuenciaCuponDias = 90;
                    break;
                case "Cuatrimestral":
                    FrecuenciaCuponDias = 120;
                    break;
                case "Semestral":
                    FrecuenciaCuponDias = 180;
                    break;
                case "Anual":
                    FrecuenciaCuponDias = 360;
                    break;
                default:
                    break;
            }

            switch (Capitalizacion)
            {
                case "Diaria":
                    CapitalizacionDias = 1;
                    break;
                case "Quincenal":
                    CapitalizacionDias = 15;
                    break;
                case "Mensual":
                    CapitalizacionDias = 30;
                    break;
                case "Bimestral":
                    CapitalizacionDias = 60;
                    break;
                case "Trimestral":
                    CapitalizacionDias = 90;
                    break;
                case "Cuatrimestral":
                    CapitalizacionDias = 120;
                    break;
                case "Semestral":
                    CapitalizacionDias = 180;
                    break;
                case "Anual":
                    CapitalizacionDias = 360;
                    break;
                default:
                    break;
            }

            Periodos = (float)DiasxAño/(float)FrecuenciaCuponDias*(float)Años;

            if(TipoTasa == "Nominal")
            {
                TasaEfectivaAnual = (float)Math.Pow(1 + TasaInteres / (DiasxAño / CapitalizacionDias), (DiasxAño / CapitalizacionDias)) - 1;
            }
            else
            {
                TasaEfectivaAnual = TasaInteres;
            }

            TasaEfectivaPeriodo = (float)Math.Pow(1 + TasaEfectivaAnual, (float)FrecuenciaCuponDias / (float)DiasxAño) - 1;
            COK = (float)Math.Pow(1 + TasaAnualDescuento, (float)FrecuenciaCuponDias / (float)DiasxAño) - 1;
            CostosEmisor = CostosEmisorPorcentaje * ValorComercial;
            CostosBonista = CostosBonistaPorcentaje * ValorComercial;

            VAN = 0;
            //TIR = (-1 * ValorComercial) - CostosBonista;
            double sumFlujoActual = 0;
            double sumFlujoActualPlazo = 0;
            double sumFactorConvexidad = 0;
            for (int t = 0; t <= Periodos; t++)
            {
                eBonoDetalle aux = new eBonoDetalle();

                aux.Fecha = FechaEmision + new TimeSpan(FrecuenciaCuponDias * t, 0, 0, 0);
                aux.Periodo = t;

                if (t != 0)
                {
                    aux.Amortizacion = ValorNominal / Periodos;
                    //aux.ValorNominalPendiente = ValorNominal * (1 - (aux.Periodo / Periodos));
                    //aux.Interes = ValorNominal * (1 - (aux.Periodo - 1) / Periodos) * TasaEfectivaPeriodo;
                    aux.Renta = ValorNominal * ((Periodos - aux.Periodo + 1) * TasaEfectivaPeriodo + 1) / Periodos;
                    //aux.Escudo = aux.Interes * ImpuestoRenta;
                    aux.Interes = aux.Renta - aux.Amortizacion;
                    aux.Escudo = aux.Interes * ImpuestoRenta;


                    aux.FlujoEmisor = 0 - aux.Renta;
                    if (t == Periodos) aux.FlujoEmisor -= PrimaPorcentaje * ValorNominal;
                    
                    
                    
                    aux.FlujoEmisorEscudo = aux.Escudo + aux.FlujoEmisor;

                    aux.FlujoBonista = -aux.FlujoEmisor;

                    aux.FlujoActual = (float)(aux.FlujoBonista / Math.Pow(1 + COK, t));

                    aux.FlujoActualPlazo = aux.FlujoActual * t * (float)FrecuenciaCuponDias / (float)DiasxAño;

                    aux.FactorConvexidad = aux.FlujoActual * t * (t + 1);

                    VAN += aux.FlujoBonista / Math.Pow(1 + COK, t);//

                    sumFlujoActual += aux.FlujoActual;
                    sumFlujoActualPlazo += aux.FlujoActualPlazo;
                    sumFactorConvexidad += aux.FactorConvexidad;
                }
                else
                {
                    aux.FlujoEmisor = ValorComercial - CostosEmisor;
                    aux.FlujoEmisorEscudo = aux.FlujoEmisor;
                    aux.FlujoBonista = -ValorComercial - CostosBonista;

                }

                Detalle.Add(aux);
            }

            Console.WriteLine(sumFlujoActual);
            Console.WriteLine(sumFactorConvexidad);

            Utilidad = VAN - (CostosBonista + ValorComercial);
            Duracion = sumFlujoActualPlazo / sumFlujoActual;
            //Convexidad = sumFactorConvexidad / (((1 + COK) * (1 + COK)) * sumFlujoActual * ((DiasxAño / FrecuenciaCuponDias) * (DiasxAño / FrecuenciaCuponDias)));
            Convexidad = sumFactorConvexidad / (Math.Pow(1 + COK, 2) * sumFlujoActual * (double)Math.Pow((double)DiasxAño / (double)FrecuenciaCuponDias, 2));
            DuracionModificada = Duracion/(1+COK);
            UpdateTirBonistas();
            UpdateTirEmisor();
            UpdateTirEmisor_scdo();
        }
        public void UpdateTirBonistas()
        {
            TIR_BONISTA = 0;

            while (true)
            {
                double VAN_temp = -ValorComercial-CostosBonista;

                for (int t = 0; t <= Periodos; t++)
                 {
                    eBonoDetalle aux = new eBonoDetalle();
                    aux.Periodo = t;
                    if (t != 0)
                    {
                        aux.Renta = ValorNominal * ((Periodos - t + 1) * TasaEfectivaPeriodo + 1) / Periodos;
                        aux.FlujoEmisor = -aux.Renta;
                        if (t == Periodos) aux.FlujoEmisor -= PrimaPorcentaje * ValorNominal;

                        aux.FlujoBonista = -aux.FlujoEmisor;

                        VAN_temp += aux.FlujoBonista / Math.Pow(1 + TIR_BONISTA, t);
                    }

                }
                if (VAN_temp <= 0) break;
                TIR_BONISTA += 0.0000001;
            }
            TREA_BONISTA = Math.Pow((TIR_BONISTA) + 1, (double)DiasxAño / FrecuenciaCuponDias) - 1;
        }

        public void UpdateTirEmisor()
        {
            TIR_EMISOR = 0;
            while (true)
            {
                double VAN_temp = ValorComercial - CostosEmisor;
                for (int t = 0; t <= Periodos; t++)
                {
                    eBonoDetalle aux = new eBonoDetalle();
                    aux.Periodo = t;
                    if (t != 0)
                    {
                        aux.Renta = ValorNominal * ((Periodos - t + 1) * TasaEfectivaPeriodo + 1) / Periodos;
                        aux.FlujoEmisor = -aux.Renta;
                        if (t == Periodos) aux.FlujoEmisor -= PrimaPorcentaje * ValorNominal;
                        VAN_temp += aux.FlujoEmisor / Math.Pow(1 + TIR_EMISOR, t);
                    }
                }
                if (VAN_temp >= 0) break;
                TIR_EMISOR += 0.0000001;
            }
            TCEA_EMISOR = Math.Pow((TIR_EMISOR) + 1, (double)DiasxAño / (double)FrecuenciaCuponDias) - 1;
        }

        public void UpdateTirEmisor_scdo()
        {
            TIR_EMISOR_ESCD = 0;
            while (true)
            {
                double VAN_temp = ValorComercial - CostosEmisor;
                for (int t = 0; t <= Periodos; t++)
                {
                    eBonoDetalle aux = new eBonoDetalle();
                    aux.Periodo = t;
                    if (t != 0)
                    {
                        aux.Amortizacion = ValorNominal / Periodos;
                        aux.Renta = ValorNominal * ((Periodos - t + 1) * TasaEfectivaPeriodo + 1) / Periodos;
                        aux.Interes = aux.Renta - aux.Amortizacion;
                        aux.Escudo = aux.Interes * ImpuestoRenta;
                        aux.FlujoEmisor = -aux.Renta;
                        aux.FlujoEmisorEscudo = aux.FlujoEmisor + aux.Escudo;
                        
                        if (t == Periodos) aux.FlujoEmisorEscudo -= PrimaPorcentaje * ValorNominal;
                        VAN_temp += aux.FlujoEmisorEscudo / Math.Pow(1 + TIR_EMISOR_ESCD, t);
                    }
                }
                if (VAN_temp >= 0) break;
                TIR_EMISOR_ESCD += 0.0000001;
            }
            TCEA_EMISOR_ESCD = Math.Pow((TIR_EMISOR_ESCD) + 1, (double)DiasxAño / (double)FrecuenciaCuponDias) - 1;
        }

    }

}