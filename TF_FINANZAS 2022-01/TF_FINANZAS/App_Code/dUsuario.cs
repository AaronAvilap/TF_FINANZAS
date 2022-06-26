using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

using System.Web.UI;
using System.Web.UI.WebControls;
using TF_FINANZAS.App_Code;

namespace TF_FINANZAS.App_Code
{
    public class dUsuario
    {
        Database db = new Database();

        public string Insertar(eUsuario o)
        {
            try
            {
                SqlConnection con = db.ConectaDb();
                string insert = "Agregar_usuario";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nombre", o.Nombre);
                cmd.Parameters.AddWithValue("@apellido", o.Apellido);
                cmd.Parameters.AddWithValue("@dni", o.Dni);
                cmd.Parameters.AddWithValue("@correo", o.Correo);
                cmd.Parameters.AddWithValue("@contrasenia", o.Contrasenia);
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

        public bool IngresarLogin(eUsuario o)
        {
            try
            {
                SqlConnection con = db.ConectaDb();
                string login = "IngresarLogin";
                SqlCommand cmd = new SqlCommand(login, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@correo", o.Correo);
                cmd.Parameters.AddWithValue("@contrasenia", o.Contrasenia);
                SqlDataReader reader = cmd.ExecuteReader();
                cmd.Parameters.Clear();
                return reader.HasRows;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally {
                db.DesconectaDb();
            }
        }

        public string RestaurarContrasenia(eUsuario o)
        {
            try
            {
                SqlConnection con = db.ConectaDb();
                string restore = "RecuperaContrasenia";
                SqlCommand cmd = new SqlCommand(restore, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@dni", o.Dni);
                cmd.Parameters.AddWithValue("@correo", o.Correo);
                cmd.Parameters.AddWithValue("@contrasenia", o.Contrasenia);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return "Actualizado";
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

        public int Obtenerid(string correo, string cont)
        {
            try
            {
                SqlConnection con = db.ConectaDb();
                string restore = "obtener_id_usuario";
                SqlCommand cmd = new SqlCommand(restore, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@correo", correo);
                cmd.Parameters.AddWithValue("@contrasenia", cont);
                SqlDataReader reader = cmd.ExecuteReader();
                int id = 0;
                while (reader.Read())
                {
                    id = (int)reader["id"];
                }
                return id;
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                db.DesconectaDb();
            }
        }


    }
}