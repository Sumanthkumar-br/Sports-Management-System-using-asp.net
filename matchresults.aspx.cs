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
    public partial class matchresults : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillteamValues();
            GridView1.DataBind();
        }





        void addschedule()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO result_tbl(date_, venue, team, opposition, results, remarks) values(@date_, @venue, @team, @opposition, @results, @remarks)", con);

                cmd.Parameters.AddWithValue("@date_", check.Text.Trim());
                cmd.Parameters.AddWithValue("@venue", venue.Text.Trim());
                cmd.Parameters.AddWithValue("@team", Dropteam.Text.Trim());
                cmd.Parameters.AddWithValue("@opposition", oppo.Text.Trim());
                cmd.Parameters.AddWithValue("@results", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@remarks", remarks.Text.Trim());

                GridView1.DataBind();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Result added Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        void fillteamValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT team from team_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Dropteam.DataSource = dt;
                Dropteam.DataValueField = "team";
                Dropteam.DataBind();


            }
            catch (Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addschedule();
            GridView1.DataBind();
        }
    }
}