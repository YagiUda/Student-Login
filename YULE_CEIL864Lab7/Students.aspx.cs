using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YULE_CEIL864Lab7
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            SqlConnection myConn = new SqlConnection(GetConnectionString());

            try
            {

                SqlCommand cmd = new SqlCommand("Select * FROM Student", myConn);
                myConn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridStudent.DataSource = rdr;
                GridStudent.DataBind();
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                myConn.Close();
            }
        }


        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            //sets the connection string from your web config file "ConnString" is the name of your Connection String

        }

    }
}