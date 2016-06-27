using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace Website
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //  Fires when the application is started
            RegisterRoutes(RouteTable.Routes);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        private void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Home", "Home", "~/WebPages/HomeWebForm.aspx");
            routes.MapPageRoute("Projects", "Projects", "~/WebPages/ProjectsWebForm.aspx");
            routes.MapPageRoute("Skills", "Skills", "~/WebPages/SkillsWebForm.aspx");
            routes.MapPageRoute("About", "About", "~/WebPages/AboutWebForm.aspx");
            routes.MapPageRoute("Contact", "Contact", "~/WebPages/ContactWebForm.aspx");
            routes.MapPageRoute("Monopoly", "Monopoly", "~/WebPages/Monopoly.aspx");
            routes.MapPageRoute("Graphics", "Graphics", "~/WebPages/GraphicsWebForm.aspx");
            routes.MapPageRoute("GameofLife", "GameofLife", "~/WebPages/GameofLife.aspx");
            routes.MapPageRoute("3DRaceWorld", "3DRaceWorld", "~/WebPages/3DRaceWorld.aspx");
            routes.MapPageRoute("Image", "Image", "~/WebPages/ImageWebForm.aspx");
            routes.MapPageRoute("Monopoly2", "WebPages/Monopoly", "~/WebPages/Monopoly.aspx");
            routes.MapPageRoute("Gizmoball", "Gizmoball", "~/WebPages/Gizmoball.aspx");
        }
    }
}