using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TF_FINANZAS.App_Code
{
    public class eUsuario
    {
        public int CodigoUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int Dni { get; set; }
        public string Correo { get; set; }
        public string Contrasenia { get; set; }
        public override string ToString()
        {
            return Convert.ToString(CodigoUsuario);
        }
    }
}