using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports_Management_System
{
    public partial class Scores : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
     
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            totalballs();
         


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }









        void totalamt()
        {
            
            overs.Text = Convert.ToString(Convert.ToInt32(overs.Text) + Convert.ToInt32("1"));
        }
        void totalballs()
        {

            overs1.Text = Convert.ToString(Convert.ToInt32(overs1.Text) + Convert.ToInt32("1"));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            totalamt();
        }
    }
}