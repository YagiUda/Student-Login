using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


/** STUDENT: CAMERON YULE 
    STUDENT NUMBER: 040906493 -->
    COURSE: CST2040 Developing Web Applications with ASP.NET & C# **/

namespace YULE_CEIL864Lab7
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StudentID = Request.QueryString["StudentID"];

            SqlConnection myConn = new SqlConnection(GetConnectionString());

            try
            {
               
                SqlCommand cmd = new SqlCommand("Select * FROM Student WHERE student_id='" + StudentID+"'", myConn);
                myConn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
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

            try
            {
            SqlCommand cmd2 = new SqlCommand("Select * FROM StudentCourse WHERE student_id='"+StudentID+"'", myConn);
            myConn.Open();
            SqlDataReader rdr1 = cmd2.ExecuteReader();
            CrseInfo.DataSource = rdr1;
            CrseInfo.DataBind();
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