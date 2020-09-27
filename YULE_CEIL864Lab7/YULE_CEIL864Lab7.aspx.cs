using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


/** STUDENT: CAMERON YULE 
    STUDENT NUMBER: 040906493 -->
    COURSE: CST2040 Developing Web Applications with ASP.NET & C# **/

namespace YULE_CEIL864Lab7
{
    public partial class YULE_CEIL864Lab7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

       


        }

        protected void NewStudent_Click(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            //If the text entered does not return null
            if (StudentExists(StudentID.Text) != null) 
                {
                    //if the text retrieved from the DB equals the entry, the student exists
                    if (StudentExists(StudentID.Text).Equals(StudentID.Text))
                    {
                        //move on to the next page
                        Response.Redirect("Update.aspx?StudentID=" + StudentID.Text);
                    }
                }
            //other wise we will tell the user this ID was not found in the DB
            else { Info.Text = "Student ID not found"; }
        }


        private String StudentExists(String StudentID)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "SELECT student_id FROM STUDENT WHERE student_id='" + StudentID + "'";


            try
            {

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                string query = (string)cmd.ExecuteScalar();
                return query;

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                conn.Close();
            }
        }

        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            //sets the connection string from your web config file "ConnString" is the name of your Connection String

        }
    }
}