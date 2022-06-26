using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TF_FINANZAS.App_Code
{
    public class Database
    {
        private SqlConnection conn;
        public SqlConnection ConectaDb()
        {
            try
            {
                string cadenadeconexion = @"Data Source = DESKTOP-B6B3H67\SQLEXPRESS; Initial Catalog = Finanzas-TF; Integrated Security = True";
                conn = new SqlConnection(cadenadeconexion);
                conn.Open();
                return conn;
            }
            catch (SqlException e)
            {
                return null;
            }
        }

        public void DesconectaDb()
        {
            conn.Close();
        }
    }
}