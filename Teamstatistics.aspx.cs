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
    public partial class Teamstatistics : System.Web.UI.Page
    {

        

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfTeamExists())
            {
                Response.Write("<script>alert('Team Already Exists, try some other Team ID');</script>");
            }
            else
            {
                GridView1.DataBind();
                addteam();
            }
        }




        void addteam()
        {
            try
            {
                string filepath = "~/Teamlogo/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Teamlogo/" + filename));
                filepath = "~/Teamlogo/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO team_master_tbl(team_id, team, total_matches, won, lost, noresult, captain, percentage, titles, logo) values(@team_id, @team, @total_matches, @won, @lost, @noresult, @captain, @percentage, @titles, @logo)", con);
                cmd.Parameters.AddWithValue("@team_id", id.Text.Trim());
                cmd.Parameters.AddWithValue("@team", team.Text.Trim());
                cmd.Parameters.AddWithValue("@total_matches", total.Text.Trim());
                cmd.Parameters.AddWithValue("@won", won.Text.Trim());
                cmd.Parameters.AddWithValue("@lost", lost.Text.Trim());
                cmd.Parameters.AddWithValue("@noresult", nr.Text.Trim());
                cmd.Parameters.AddWithValue("@captain", captain.Text.Trim());
                cmd.Parameters.AddWithValue("@percentage", percent.Text.Trim());
                cmd.Parameters.AddWithValue("@titles", titles.Text.Trim());
                cmd.Parameters.AddWithValue("@logo", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Team added Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from team_master_tbl where team_id='" + id.Text.Trim() + "';", con);
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




        void updateTeamDetails()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string filepath = "~/Teamlogo/index.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Teamlogo/" + filename));
                filepath = "~/Teamlogo/" + filename;


                SqlCommand cmd = new SqlCommand("update team_master_tbl set team_id=@team_id, team=@team, total_matches=@total_matches, won=@won, lost=@lost, noresult=@noresult, captain=@captain, percentage=@percentage,titles=@titles, logo=@logo WHERE team_id='" + id.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@team_id", id.Text.Trim());
                cmd.Parameters.AddWithValue("@team", team.Text.Trim());
                cmd.Parameters.AddWithValue("@total_matches", total.Text.Trim());
                cmd.Parameters.AddWithValue("@won", won.Text.Trim());
                cmd.Parameters.AddWithValue("@lost", lost.Text.Trim());
                cmd.Parameters.AddWithValue("@noresult", nr.Text.Trim());
                cmd.Parameters.AddWithValue("@captain", captain.Text.Trim());
                cmd.Parameters.AddWithValue("@percentage", percent.Text.Trim());
                cmd.Parameters.AddWithValue("@titles", titles.Text.Trim());
                cmd.Parameters.AddWithValue("@logo", filepath);


                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                 
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }







        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfTeamExists())
            {
                GridView1.DataBind();
                updateTeamDetails();
            }
            else
            {
            
                Response.Write("<script>alert('Team Already Exists, try some other Team ID');</script>");
            }
        }


        void getTeamByID()
        {
            try
            {
             

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from team_master_tbl where team_id='" + id.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
            
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        id.Text = dr.GetValue(0).ToString();
                        team.Text = dr.GetValue(1).ToString();
                        total.Text = dr.GetValue(2).ToString();
                       won.Text = dr.GetValue(3).ToString();
                        lost.Text = dr.GetValue(4).ToString();
                        nr.Text = dr.GetValue(5).ToString();
                        captain.Text = dr.GetValue(6).ToString();
                        percent.Text = dr.GetValue(7).ToString();
                        titles.Text = dr.GetValue(8).ToString();
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

        protected void LinkButton4_click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            getTeamByID();
        }
    }
}