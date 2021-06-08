using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Sports_Management_System
{
    public partial class Adminelection : System.Web.UI.Page
    {

        static string global_filepath;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getBookByID();
        }






        void getBookByID()
        {
            try
            {

               
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from app_tbl WHERE reg_no='" + reg.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    name.Text = dt.Rows[0]["full_name"].ToString();
                    reg.Text = dt.Rows[0]["reg_no"].ToString();
                    gen.Text = dt.Rows[0]["gender"].ToString();
                    sem.Text = dt.Rows[0]["semister"].ToString().Trim();
                    dept.Text = dt.Rows[0]["dept"].ToString().Trim();
                    contact.Text = dt.Rows[0]["contact_no"].ToString().Trim();
                    mail.Text = dt.Rows[0]["email"].ToString().Trim();
                    team.Text = dt.Rows[0]["team"].ToString();
                    skill.Text = dt.Rows[0]["skills"].ToString().Trim();




                    global_filepath = dt.Rows[0]["profile"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView1.Visible = true;
        }


        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from app_tbl where reg_no='" + reg.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }



        void updateMemberStatusByID(string status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE app_tbl SET status='" + status + "' WHERE reg_no='" + reg.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert(' Status Updated');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Selected");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Wait List");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("Rejected");
        }
    }
}