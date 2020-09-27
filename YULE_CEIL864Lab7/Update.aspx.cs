using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;


/** STUDENT: CAMERON YULE 
    STUDENT NUMBER: 040906493 -->
    COURSE: CST2040 Developing Web Applications with ASP.NET & C# **/

namespace YULE_CEIL864Lab7
{
    public partial class Update : System.Web.UI.Page
    {
        string StudentID;
        protected void Page_Load(object sender, EventArgs e)
        {


            StudentID = Request.QueryString["StudentID"];
            studentIdent.Text = StudentID;

            SqlConnection myConn = new SqlConnection(GetConnectionString());


            //update GridView1 with the query below
            try
            {

                SqlCommand cmd = new SqlCommand("Select * FROM Student WHERE student_id='" + StudentID + "'", myConn);
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

            //update CrseInfo with the query below
            try
            {
                SqlCommand cmd2 = new SqlCommand("Select * FROM StudentCourse WHERE student_id='" + StudentID + "'", myConn);
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
        private void UpdateInfoStudent()
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());

            //Based on the updated values, the student's info is updated in the Student table

            string sql = "UPDATE Student SET firstname=@Val1,lastname=@Val2,address=@Val3,city=@Val4,province=@Val5,postal_code=@Val6,phone_number=@Val7 WHERE student_id="+StudentID;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Val1", FirstName.Text);
                cmd.Parameters.AddWithValue("@Val2", LastName.Text);
                cmd.Parameters.AddWithValue("@Val3", Address.Text);
                cmd.Parameters.AddWithValue("@Val4", City.Text);
                cmd.Parameters.AddWithValue("@Val5", Province.Text);
                cmd.Parameters.AddWithValue("@Val6", PostalCode.Text);
                cmd.Parameters.AddWithValue("@Val7", PhoneNumber.Text);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
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


        //Updates the course a student is enrolled in in the StudentCourse table
        private void UpdateInfoStudentCourse()
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "UPDATE StudentCourse SET course_code=@Val1";
            string courseCode = GetCourseCode(CourseName.Text);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Val1", courseCode);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
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


        //Give a course name, does a query to retrieve the respective course code
        private String GetCourseCode(String courseName)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "SELECT course_code FROM Course WHERE course_name='" + courseName + "'";


            try
            {

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                string CourseCode = (string)cmd.ExecuteScalar();
                return CourseCode;

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

        //Deletes a student entry from Student table

        private String DeleteStudent(String student)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "DELETE FROM Student WHERE student_ID='" + student+ "'";


            try
            {

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                string CourseCode = (string)cmd.ExecuteScalar();
                return CourseCode;

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

        //Deletes a student entry from StudentCourse table
        private String UnenrollStudent(String student)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "DELETE FROM StudentCourse WHERE student_ID='" + student + "'";


            try
            {

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                string CourseCode = (string)cmd.ExecuteScalar();
                return CourseCode;

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



        protected void SubmitRegister_Click(object sender, EventArgs e)
        {

            UpdateInfoStudent();
            UpdateInfoStudentCourse();

            Response.Redirect("Confirm.aspx?StudentID=" + studentIdent.Text);

        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            DeleteStudent(StudentID);
            UnenrollStudent(StudentID);
            Response.Redirect("YULE_CEIL864Lab7.aspx");
        }
    }
}
 