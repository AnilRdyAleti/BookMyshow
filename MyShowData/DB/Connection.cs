using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyShowData.DB
{
   public class DBCommunication
    {


        SqlConnection SqlConn = null;
        string Connstring =string.Empty;

        public DBCommunication()
        {
            Connstring = @"Data Source=LIN66002134\MSSQLSERVER2014;Initial Catalog=BCH062616;User ID=sa;Password=sa;Persist Security Info=False";
            SqlConn  = new SqlConnection(Connstring);
        }
        
      

        public int ExecuteNonQuery(string Cmd)
        {
            try
            {

                int rowsaffcted = 0;
                SqlConn.Open();
                if (SqlConn.State == System.Data.ConnectionState.Open)
                {
                    SqlCommand sqlcmd = new SqlCommand(Cmd, SqlConn);
                    rowsaffcted = sqlcmd.ExecuteNonQuery();
                }
                SqlConn.Close();
                return rowsaffcted;

            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public void ExecuteScaler()
        {

        }

    }
}
