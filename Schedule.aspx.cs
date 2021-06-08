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
    public partial class Schedule : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addschedule();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }


        void deleteMemberByID()
        {
            if (checkIfTeamExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from schedule_tbl WHERE date_='" + check.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Schedule Deleted Successfully');</script>");
                  
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Schedule ID');</script>");
            }
        }

        bool checkIfTeamExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from schedule_tbl where date_='" + check.Text.Trim() + "';", con);
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


        void addschedule()
        {
            try
            {
                string filepath = "~/Schedule/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Schedule/" + filename));
                filepath = "~/Schedule/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO schedule_tbl(date_, venue, description, brouchure) values(@date_, @venue, @description, @brouchure)", con);

                cmd.Parameters.AddWithValue("@date_", check.Text.Trim());
                cmd.Parameters.AddWithValue("@venue", venue.Text.Trim());
                cmd.Parameters.AddWithValue("@description", decrip.Text.Trim());
                cmd.Parameters.AddWithValue("@brouchure", filepath);
                GridView1.DataBind();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Schedule added Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from schedule_tbl where date_='" + check.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        check.Text = dr.GetValue(0).ToString();
                        venue.Text = dr.GetValue(1).ToString();
                        decrip.Text = dr.GetValue(2).ToString();
                      

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton1_click(object sender, EventArgs e)
        {
            getMemberByID();
        }
    }
}