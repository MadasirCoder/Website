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
        Dictionary<String, string> imageInfo = new Dictionary<String, string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            loadImages();
        }

        private void loadImages()
        {
            imageUrl.Add("../Images/monopoly.PNG");
            imageUrl.Add("../Images/monopoly1.PNG");
            imageUrl.Add("../Images/monopoly2.PNG");
            imageUrl.Add("../Images/monopoly3.PNG");
            imageUrl.Add("../Images/monopoly4.PNG");
            imageUrl.Add("../Images/monopoly5.PNG");
            imageUrl.Add("../Images/monopoly6.PNG");
            imageUrl.Add("../Images/monopoly7.PNG");
            imageUrl.Add("../Images/monopoly8.PNG");
            imageUrl.Add("../Images/monopoly9.PNG");
            imageUrl.Add("../Images/monopoly10.PNG");
            imageUrl.Add("../Images/monopoly11.PNG");
            imageUrl.Add("../Images/monopoly12.PNG");
            imageUrl.Add("../Images/monopoly13.PNG");
            imageUrl.Add("../Images/monopoly14.PNG");
            imageUrl.Add("../Images/monopoly15.PNG");
            imageUrl.Add("../Images/monopoly16.PNG");
            imageUrl.Add("../Images/monopoly17.PNG");

            imageInfo.Add("../Images/monopoly.PNG", "Monopoly Logo");
            imageInfo.Add("../Images/monopoly1.PNG", "2 Player Main Menu. Up to 5 players can play");
            imageInfo.Add("../Images/monopoly2.PNG", "2 Player game menu. There is 4 sections to this menu. Name, cash, PassGo and tax buttons are at the north section. South section with buttons is where you deal with property and card transactions. Inbetween these 2 sections is gap which is called the location grid. All properties owned by the players shows up here. Finally, there's a console feedback feature at the bottom.");
            imageInfo.Add("../Images/monopoly3.PNG", "4 Player game menu. Size of the window adjusts to how many are playing");
            imageInfo.Add("../Images/monopoly4.PNG", "2 Players passed go! Feeback is given below");
            imageInfo.Add("../Images/monopoly5.PNG", "Tax Transactions occur");
            imageInfo.Add("../Images/monopoly6.PNG", "Buy property window. With prices and 1 click buy.");
            imageInfo.Add("../Images/monopoly7.PNG", "Players bought some properties");
            imageInfo.Add("../Images/monopoly8.PNG", "A player who owns atleast 1 properties can click \"Constuct\". A new window appear showing all properties owned by the player. Easy 1 click build");
            imageInfo.Add("../Images/monopoly9.PNG", "After user builds a property up, the game menu updates the location grid(middle) with prices and number of houses");
            imageInfo.Add("../Images/monopoly10.PNG", "Players have built a few properties");
            imageInfo.Add("../Images/monopoly11.PNG", "Pay Someone Window. This allows user to pay any other user with 1 click");
            imageInfo.Add("../Images/monopoly12.PNG", "Payed someone feedback is given at bottom console.");
            imageInfo.Add("../Images/monopoly13.PNG", "Take Down Window. A user can easily sell,mortgagae or deconstruct a property with 1 click");
            imageInfo.Add("../Images/monopoly14.PNG", "Take down property feedback is given at bottom console.");
            imageInfo.Add("../Images/monopoly15.PNG", "Adding and taking away cash feature also added.");
            imageInfo.Add("../Images/monopoly16.PNG", "Card Window. Community chest and Chance card event are handled with 1 click");
            imageInfo.Add("../Images/monopoly17.PNG", "Monopoly!");
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
            String str = imageInfo[((ImageButton)sender).ImageUrl];
            Response.Redirect("ImageWebForm.aspx?ImageURL=" +
            ((ImageButton)sender).ImageUrl+"&Info="+str);
        }
    }
}