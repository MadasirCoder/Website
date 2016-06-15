using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private ArrayList imageUrl = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadImages();
        }

        private void loadImages()
        {
            imageUrl.Add("Images/monopoly.PNG");
            imageUrl.Add("Images/monopoly1.PNG");
            imageUrl.Add("Images/monopoly2.PNG");
            imageUrl.Add("Images/monopoly3.PNG");
            imageUrl.Add("Images/monopoly4.PNG");
            imageUrl.Add("Images/monopoly5.PNG");
            imageUrl.Add("Images/monopoly6.PNG");
            imageUrl.Add("Images/monopoly7.PNG");
            imageUrl.Add("Images/monopoly8.PNG");
            imageUrl.Add("Images/monopoly9.PNG");
            imageUrl.Add("Images/monopoly10.PNG");
            imageUrl.Add("Images/monopoly11.PNG");
            imageUrl.Add("Images/monopoly12.PNG");
            imageUrl.Add("Images/monopoly13.PNG");
            imageUrl.Add("Images/monopoly14.PNG");
            imageUrl.Add("Images/monopoly15.PNG");
            imageUrl.Add("Images/monopoly16.PNG");
            imageUrl.Add("Images/monopoly17.PNG");

            foreach (String s in imageUrl)
            {
                ImageButton imageButton = new ImageButton();
                imageButton.ImageUrl = s;
                imageButton.Height = Unit.Pixel(100);
                imageButton.Style.Add("padding", "5px");
                imageButton.Width = Unit.Pixel(100);
                imageButton.Click += new ImageClickEventHandler(imageButton_Click);
                Panel1.Controls.Add(imageButton);
            }
          
        }
        protected void imageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ImageWebForm.aspx?ImageURL=" +
                ((ImageButton)sender).ImageUrl);
        }
    }
}