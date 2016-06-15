using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String s = Request.QueryString["Info"];
            label1.Text = s;
            label1.Font.Size = 18;
            Image1.ImageUrl = Request.QueryString["ImageURL"];
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Monopoly.aspx");
        }
    }
}