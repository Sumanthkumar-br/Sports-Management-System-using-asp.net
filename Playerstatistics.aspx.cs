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
    public partial class Playerstatistics : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            entry();
            GridView1.DataBind();

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
                SqlCommand cmd = new SqlCommand("select * from app_tbl where reg_no='" + reg.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        name.Text = dr.GetValue(0).ToString();
                        gen.Text = dr.GetValue(2).ToString();
                        reg.Text = dr.GetValue(1).ToString();
                        dept.Text = dr.GetValue(4).ToString();
                        team.Text = dr.GetValue(7).ToString();
                        img.Text = dr.GetValue(9).ToString();
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







        void getfbStatsByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from "+team.Text +" where reg_no='" + reg.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        name.Text = dr.GetValue(0).ToString();
                        reg.Text = dr.GetValue(1).ToString();
                        gen.Text = dr.GetValue(2).ToString();
                        dept.Text = dr.GetValue(3).ToString();
                        team.Text = dr.GetValue(4).ToString();
                        tot.Text = dr.GetValue(5).ToString();
                        DropDownList2.Text = dr.GetValue(7).ToString();
                        rating.Text = dr.GetValue(7).ToString();
                        mostgoal.Text = dr.GetValue(8).ToString();
                        assist.Text = dr.GetValue(9).ToString();
                        clearing.Text = dr.GetValue(10).ToString();
                        cleansheet.Text = dr.GetValue(11).ToString();

                       

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

        void getkbStatsByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from " + team.Text + " where reg_no='" + reg.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        name.Text = dr.GetValue(0).ToString();
                        reg.Text = dr.GetValue(1).ToString();
                        gen.Text = dr.GetValue(2).ToString();
                        dept.Text = dr.GetValue(3).ToString();
                        team.Text = dr.GetValue(4).ToString();
                        tot.Text = dr.GetValue(5).ToString();
                        DropDownList2.Text = dr.GetValue(7).ToString();
                        rating.Text = dr.GetValue(7).ToString();
                        raids.Text = dr.GetValue(8).ToString();
                        tackles.Text = dr.GetValue(9).ToString();
                        avgraid.Text = dr.GetValue(10).ToString();
                        avgtackle.Text = dr.GetValue(11).ToString();
                        superraids.Text = dr.GetValue(12).ToString();
                        supertack.Text = dr.GetValue(13).ToString();


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
        void getcrickStatsByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from " + team.Text + " where reg_no='" + reg.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        name.Text = dr.GetValue(0).ToString();
                        reg.Text = dr.GetValue(1).ToString();
                        gen.Text = dr.GetValue(2).ToString();
                        dept.Text = dr.GetValue(3).ToString();
                        team.Text = dr.GetValue(4).ToString();
                        tot.Text = dr.GetValue(5).ToString();
                        DropDownList2.Text = dr.GetValue(7).ToString();
                        rating.Text = dr.GetValue(7).ToString();
                        

                        inn.Text = dr.GetValue(8).ToString();
                        runs.Text = dr.GetValue(9).ToString();
                        wik.Text = dr.GetValue(10).ToString();
                        strike.Text = dr.GetValue(11).ToString();
                        catchs.Text = dr.GetValue(12).ToString();
                        avgbat.Text = dr.GetValue(12).ToString();
                        bestbat.Text = dr.GetValue(14).ToString();
                        bstbowl.Text = dr.GetValue(15).ToString();
                        fifer.Text = dr.GetValue(16).ToString();
                        four.Text = dr.GetValue(17).ToString();
                        fifty.Text = dr.GetValue(18).ToString();
                        mom.Text = dr.GetValue(19).ToString();


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





        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
         
            entry();

            if (team.Text == "Foot Ball")
            {
                
                getfbStatsByID();
            }
            else if (team.Text == "Kabbaddi")
            {

                getkbStatsByID();
            }
            else if (team.Text == "Cricket")
            {
           
                getcrickStatsByID();
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            getMemberByID();
            entry();
        }


        void entry()
        {
            if(team.Text == "Cricket")
            {
                inn.Visible = true;
                runs.Visible = true;
                wik.Visible = true;
                strike.Visible = true;
                catchs.Visible = true;
                avgbat.Visible = true;
                bestbat.Visible = true;
                bstbowl.Visible = true;
                fifer.Visible = true;
                four.Visible = true;
                fifty.Visible = true;
                mom.Visible = true;

                raids.Visible = false;
                tackles.Visible = false;
                avgraid.Visible = false;
                avgtackle.Visible = false;
                raids.Visible = false;
                superraids.Visible = false;
                supertack.Visible = false;

                mostgoal.Visible = false;
                assist.Visible = false;
                clearing.Visible = false;
                cleansheet.Visible = false;
                //lbl
                Label0.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;

                Label12.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                Label16.Visible = false;
                Label17.Visible = false;

                Label18.Visible = false;
                Label19.Visible = false;
                Label20.Visible = false;
                Label21.Visible = false;


            }
            else if(team.Text=="Foot Ball")
             {
                raids.Visible = false;
                tackles.Visible = false;
                avgraid.Visible = false;
                avgtackle.Visible = false;
                raids.Visible = false;
                superraids.Visible = false;
                supertack.Visible = false;

                mostgoal.Visible = true;
                assist.Visible = true;
                clearing.Visible = true;
                cleansheet.Visible = true;

                inn.Visible = false;
                runs.Visible = false;
                wik.Visible = false;
                strike.Visible = false;
                catchs.Visible = false;
                avgbat.Visible = false;
                bestbat.Visible = false;
                bstbowl.Visible = false;
                fifer.Visible = false;
                four.Visible = false;
                fifty.Visible = false;
                mom.Visible = false;

                Label0.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;

                Label12.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                Label16.Visible = false;
                Label17.Visible = false;

                Label18.Visible = true;
                Label19.Visible = true;
                Label20.Visible = true;
                Label21.Visible = true;

            }
            else if (team.Text == "Kabbaddi")
            {
                raids.Visible = true;
                tackles.Visible = true;
                avgraid.Visible = true;
                avgtackle.Visible = true;
                raids.Visible = true;
                superraids.Visible = true;
                supertack.Visible = true;


                mostgoal.Visible = false;
                assist.Visible = false;
                clearing.Visible = false;
                cleansheet.Visible = false;

                inn.Visible = false;
                runs.Visible = false;
                wik.Visible = false;
                strike.Visible = false;
                catchs.Visible = false;
                avgbat.Visible = false;
                bestbat.Visible = false;
                bstbowl.Visible = false;
                fifer.Visible = false;
                four.Visible = false;
                fifty.Visible = false;
                mom.Visible = false;

                Label0.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;

                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                Label16.Visible = true;
                Label17.Visible = true;

                Label18.Visible = false;
                Label19.Visible = false;
                Label20.Visible = false;
                Label21.Visible = false;
            }
            else
            {
                Label0.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;

                Label12.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                Label15.Visible = false;
                Label16.Visible = false;
                Label17.Visible = false;

                Label18.Visible = false;
                Label19.Visible = false;
                Label20.Visible = false;
                Label21.Visible = false;

                mostgoal.Visible = false;
                assist.Visible = false;
                clearing.Visible = false;
                cleansheet.Visible = false;

                inn.Visible = false;
                runs.Visible = false;
                wik.Visible = false;
                strike.Visible = false;
                catchs.Visible = false;
                avgbat.Visible = false;
                bestbat.Visible = false;
                bstbowl.Visible = false;
                fifer.Visible = false;
                four.Visible = false;
                fifty.Visible = false;
                mom.Visible = false;

                raids.Visible = false;
                tackles.Visible = false;
                avgraid.Visible = false;
                avgtackle.Visible = false;
                raids.Visible = false;
                superraids.Visible = false;
                supertack.Visible = false;
            }
        }





        void addcricketteam()
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Cricket(full_name, reg_no, gender,  dept, team, total_matches, role, rating, innings, runs, wickets, strike, catches, avg_bat, best_bat, best_bowl,fifer, four, fifty, mom, img) values(@full_name, @reg_no, @gender,  @dept, @team, @total_matches, @role, @rating, @innings, @runs, @wickets, @strike, @catches, @avg_bat, @best_bat, @best_bowl, @fifer, @four, @fifty, @mom, @img)", con);
                cmd.Parameters.AddWithValue("@full_name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@reg_no", reg.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gen.Text.Trim());
                cmd.Parameters.AddWithValue("@dept", dept.Text.Trim());
                cmd.Parameters.AddWithValue("@team", team.Text.Trim());
                cmd.Parameters.AddWithValue("@total_matches", tot.Text.Trim());
                cmd.Parameters.AddWithValue("@role", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@rating", rating.Text.Trim());
                cmd.Parameters.AddWithValue("@innings", inn.Text.Trim());
                cmd.Parameters.AddWithValue("@runs", runs.Text.Trim());
                cmd.Parameters.AddWithValue("@wickets", wik.Text.Trim());
                cmd.Parameters.AddWithValue("@strike", strike.Text.Trim());
                cmd.Parameters.AddWithValue("@catches", catchs.Text.Trim());
                cmd.Parameters.AddWithValue("@avg_bat", avgbat.Text.Trim());
                cmd.Parameters.AddWithValue("@best_bat", bestbat.Text.Trim());
                cmd.Parameters.AddWithValue("@best_bowl", bstbowl.Text.Trim());
                cmd.Parameters.AddWithValue("@fifer", fifer.Text.Trim());
                cmd.Parameters.AddWithValue("@four", four.Text.Trim());
                cmd.Parameters.AddWithValue("@fifty", fifty.Text.Trim());
                cmd.Parameters.AddWithValue("@mom", mom.Text.Trim());

                cmd.Parameters.AddWithValue("@img", img.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Cricket Players Stat Updated Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void addkbteam()
        {
            try
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Kabbaddi(full_name, reg_no, gender,  dept, team, total_matches, role, rating,total_raid, total_tackle, avg_raid, avg_tackle, total_superraid, total_supertack, img) values(@full_name, @reg_no, @gender,  @dept, @team, @total_matches, @role, @rating, @total_raid, @total_tackle, @avg_raid, @avg_tackle, @total_superraid, @total_supertack, @img)", con);
                cmd.Parameters.AddWithValue("@full_name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@reg_no", reg.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gen.Text.Trim());
                cmd.Parameters.AddWithValue("@dept", dept.Text.Trim());
                cmd.Parameters.AddWithValue("@team", team.Text.Trim());
                cmd.Parameters.AddWithValue("@total_matches", tot.Text.Trim());
                cmd.Parameters.AddWithValue("@role", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@rating", rating.Text.Trim());
                cmd.Parameters.AddWithValue("@total_raid", raids.Text.Trim());
                cmd.Parameters.AddWithValue("@total_tackle", tackles.Text.Trim());
                cmd.Parameters.AddWithValue("@avg_raid", avgraid.Text.Trim());
                cmd.Parameters.AddWithValue("@avg_tackle", avgtackle.Text.Trim());
                cmd.Parameters.AddWithValue("@total_superraid", superraids.Text.Trim());
                cmd.Parameters.AddWithValue("@total_supertack", supertack.Text.Trim());
                cmd.Parameters.AddWithValue("@img", img.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Kabbaddi Players Stat Updated Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addfbteam()
        {
            try
            {
             

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO FootBall(full_name, reg_no, gender,  dept, team, tot_matches, role, rating, most_goal, assists, clearings, clean_sheet, img) values(@full_name, @reg_no, @gender,  @dept, @team, @tot_matches, @role, @rating, @most_goal, @assists, @clearings, @clean_sheet, @img)", con);
                cmd.Parameters.AddWithValue("@full_name", name.Text.Trim());
                cmd.Parameters.AddWithValue("@reg_no", reg.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gen.Text.Trim());
                cmd.Parameters.AddWithValue("@dept", dept.Text.Trim());
                cmd.Parameters.AddWithValue("@team", team.Text.Trim());
                cmd.Parameters.AddWithValue("@tot_matches", tot.Text.Trim());
                cmd.Parameters.AddWithValue("@role", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@rating", rating.Text.Trim());
                cmd.Parameters.AddWithValue("@most_goal", mostgoal.Text.Trim());
                cmd.Parameters.AddWithValue("@assists", assist.Text.Trim());
                cmd.Parameters.AddWithValue("@clearings", clearing.Text.Trim());
                cmd.Parameters.AddWithValue("@clean_sheet", cleansheet.Text.Trim());
                cmd.Parameters.AddWithValue("@img", img.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated Successfully!! ');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (team.Text == "Foot Ball")
            {
                addfbteam();
           
            }
            else if(team.Text=="Kabbaddi")
            {
                addkbteam();
                
            }
            else if(team.Text=="Cricket")
            {
                addcricketteam();
        
            }
           
        }
    }
}