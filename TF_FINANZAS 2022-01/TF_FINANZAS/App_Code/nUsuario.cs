using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TF_FINANZAS.App_Code
{
    public class nUsuario
    {
        dUsuario usuarioDatos;
        public nUsuario()
        {
            usuarioDatos = new dUsuario();
        }

        public string RegistrarUsuario(string n, string a, int d, string c, string con)
        {
            eUsuario usuario = new eUsuario() {
                Nombre = n,
                Apellido = a,
                Dni = d,
                Correo = c,
                Contrasenia = con
            };
            return usuarioDatos.Insertar(usuario);
        }

       public bool IngresarLogin(string c, string contrasenia)
        {
            eUsuario usuario = new eUsuario() { 
                Correo = c,
                Contrasenia = contrasenia
            };
            return usuarioDatos.IngresarLogin(usuario);
        }

       public string RestaurarContrasenia(int d, string c, string con)
        {
            eUsuario usuario = new eUsuario() { 
                Dni = d,
                Correo = c,
                Contrasenia = con
            };
            return usuarioDatos.RestaurarContrasenia(usuario);
        }

        public int Obtener_id(string correo, string cont)
        {
            return usuarioDatos.Obtenerid(correo, cont);
        }

    }
}