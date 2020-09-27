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
    public partial class Register : System.Web.UI.Page
    {

   

        protected void Page_Load(object sender, EventArgs e)
        {

            
            

        }

     
        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            //sets the connection string from your web config file "ConnString" is the name of your Connection String

        }


        //WE NEED TO GET COURSE CODE FROM COURSE NAME
        //SqlCommand cmd = new SqlCommand("SELECT course_code FROM Course WHERE course_name = '" + CourseName.Text + "';", myConn);
        //THIS MIGHT WORK

        private void InsertInfoStudent()
        {

            SqlConnection conn = new SqlConnection(GetConnectionString());
            
            //Adds the new student to the database in the Student table
            string sql = "INSERT INTO  Student (student_id,firstname,lastname,address,city,province,postal_code,phone_number) VALUES (@Val1,@Val2,@Val3,@Val4,@Val5,@Val6,@Val7,@Val8)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Val1", StudentID.Text);
                cmd.Parameters.AddWithValue("@Val2", FirstName.Text);
                cmd.Parameters.AddWithValue("@Val3", LastName.Text);
                cmd.Parameters.AddWithValue("@Val4", Address.Text);
                cmd.Parameters.AddWithValue("@Val5", City.Text);
                cmd.Parameters.AddWithValue("@Val6", Province.Text);
                cmd.Parameters.AddWithValue("@Val7", PostalCode.Text);
                cmd.Parameters.AddWithValue("@Val8", PhoneNumber.Text);
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


        //Inserts Info into the StudentCourse Table
        private void InsertInfoStudentCourse()
        {
            

            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO  StudentCourse (student_id, course_code) VALUES (@Val1,@Val2)";
            string courseCode = GetCourseCode(CourseName.Text);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Val1", StudentID.Text);
                cmd.Parameters.AddWithValue("@Val2", courseCode);
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
        
        //Give a course code, querys for the respective course name
        private String GetCourseCode(String courseName)
        {
            

            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "SELECT course_code FROM Course WHERE course_name='" + courseName+"'";

       
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

        //method to perform a quick check on whether or not the student exists
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

        protected void SubmitRegister_Click(object sender, EventArgs e)
        {
            
            //If the text entered does not return null
            if (StudentExists(StudentID.Text) != null)
            {
                //if the text retrieved from the DB equals the entry, the student exists
                if (StudentExists(StudentID.Text).Equals(StudentID.Text))

                    //now we insert the student info
                    Info.Text = "Student ID already exists, please enter a unique Student ID";
                    
                //move on to the next page

                
                
            }
            //other wise we will tell the user this ID was not found in the DB
            else {
                InsertInfoStudent();
                InsertInfoStudentCourse();
                Response.Redirect("Confirm.aspx?StudentID=" + StudentID.Text);
                }


        }
    }
}