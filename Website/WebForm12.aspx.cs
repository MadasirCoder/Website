using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        public ArrayList teams = new ArrayList();
        private DataTable dataTable = new DataTable();
        private int count =  0;

        protected void Page_Load(object sender, EventArgs e)
        {
            String s = ConfigurationManager.ConnectionStrings["FootballConString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;


            try
            {
                if (Session["d"] != null)
                {
                    info.Text = Session["d"].ToString();
                }
                else
                {
                    info.Text = "(Enter a match)";
                }

                SqlCommand cmd = new SqlCommand("SELECT TeamName,GamesPlayed,Wins,Draws,Loses,Goals,GoalAgainst,GoalDifference,Points FROM Football ORDER BY Points DESC, GoalDifference DESC, Goals DESC");
                cmd.Connection = con;
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();


                for (int rows = 0; rows < GridView1.Rows.Count; rows++)
                {
                    string name = GridView1.Rows[rows].Cells[0].Text;
                    teams.Add(name.Trim());
                    count++;
                }
                
                if (!IsPostBack)
                {
                    foreach (String a in teams)
                    {
                        DropDownList1.Items.Add(a);
                        DropDownList2.Items.Add(a);
                    }
                    DropDownList2.SelectedIndex = 1;

                    foreach (ListItem item in DropDownList1.Items)
                    {
                        item.Attributes.Add("Title", item.Text);
                    }
                    foreach (ListItem item in DropDownList2.Items)
                    {
                        item.Attributes.Add("Title", item.Text);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Team";
                e.Row.Cells[1].Text = "Pld";
                e.Row.Cells[2].Text = "W";
                e.Row.Cells[3].Text = "D";
                e.Row.Cells[4].Text = "L";
                e.Row.Cells[5].Text = "GF";
                e.Row.Cells[6].Text = "GA";
                e.Row.Cells[7].Text = "GD";
                e.Row.Cells[8].Text = "PTS";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            enterResult();
        }

        private void enterResult()
        {
            String homeTeam = DropDownList1.Text.Trim();
            String awayTeam = DropDownList2.Text.Trim();

            int homeScore = 0;
            int awayScore = 0;
            if (!homeTeam.Equals(awayTeam))
            {
                if ((Int32.TryParse(TextBox1.Text, out homeScore)) && (Int32.TryParse(TextBox2.Text, out awayScore)))
                {
                    updateDatabase(homeTeam, awayTeam, homeScore, awayScore);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('No number or Non-number entered in score box');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Duplicate teams');", true);
            }


        }

        /*
         *
         *This method fires when enter result button is clicked
         * First stage: Connect to database 
         * Second stage: Retrieve the stats and create a Team object for both teams.
         * Third Stage: Calculation between the Team Objects occur.
         * Fourth Stage: Finally edit the stats in table. 
         *
         */
        private void updateDatabase(String home, String away, int homeS, int awayS)
        {
            String homeTeam = home;
            String awayTeam = away;
            int homeScore = homeS;
            int awayScore = awayS;

            //Response.Write(homeTeam);
            //Response.Write(awayTeam);

            String s = ConfigurationManager.ConnectionStrings["FootballConString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT TeamName,GamesPlayed,Wins,Draws,Loses,Goals,GoalAgainst,GoalDifference,Points FROM Football WHERE TeamName= '" + homeTeam + "'" + " OR TeamName= '" + awayTeam + "'");
                cmd.Connection = con;
                con.Open();
                // create data adapter
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // this will query your database and return the result to your datatable
                da.Fill(dataTable);


                foreach (DataRow dataRow in dataTable.Rows)
                {
                    foreach (var item in dataRow.ItemArray)
                    {
                        //Response.Write(item);
                    }
                }

                String teamA = dataTable.Rows[0][0].ToString().Trim();
                Team a = new Team();
                Team b = new Team();

                //If teamA is the home team in the datatable else teamA is the second in table
                if (teamA.Equals(homeTeam))
                {
                   // Response.Write(teamA + " equals " + homeTeam);
                    //home
                    a.teamName = dataTable.Rows[0][0].ToString().Trim();
                    a.wins = Int32.Parse(dataTable.Rows[0][2].ToString());
                    a.draws = Int32.Parse(dataTable.Rows[0][3].ToString());
                    a.loses = Int32.Parse(dataTable.Rows[0][4].ToString());
                    a.goals = Int32.Parse(dataTable.Rows[0][5].ToString());
                    a.goalsConceded = Int32.Parse(dataTable.Rows[0][6].ToString());
                    a.goalDifference = Int32.Parse(dataTable.Rows[0][7].ToString());

                    //away
                    b.teamName = dataTable.Rows[1][0].ToString().Trim();
                    b.wins = Int32.Parse(dataTable.Rows[1][2].ToString());
                    b.draws = Int32.Parse(dataTable.Rows[1][3].ToString());
                    b.loses = Int32.Parse(dataTable.Rows[1][4].ToString());
                    b.goals = Int32.Parse(dataTable.Rows[1][5].ToString());
                    b.goalsConceded = Int32.Parse(dataTable.Rows[1][6].ToString());
                    b.goalDifference = Int32.Parse(dataTable.Rows[1][7].ToString());
                }
                else
                {
                  //  Response.Write(teamA + " does not equals " + homeTeam);
                    //home
                    a.teamName = dataTable.Rows[1][0].ToString().Trim();
                    a.wins = Int32.Parse(dataTable.Rows[1][2].ToString());
                    a.draws = Int32.Parse(dataTable.Rows[1][3].ToString());
                    a.loses = Int32.Parse(dataTable.Rows[1][4].ToString());
                    a.goals = Int32.Parse(dataTable.Rows[1][5].ToString());
                    a.goalsConceded = Int32.Parse(dataTable.Rows[1][6].ToString());
                    a.goalDifference = Int32.Parse(dataTable.Rows[1][7].ToString());

                    //away
                    b.teamName = dataTable.Rows[0][0].ToString().Trim();
                    b.wins = Int32.Parse(dataTable.Rows[0][2].ToString());
                    b.draws = Int32.Parse(dataTable.Rows[0][3].ToString());
                    b.loses = Int32.Parse(dataTable.Rows[0][4].ToString());
                    b.goals = Int32.Parse(dataTable.Rows[0][5].ToString());
                    b.goalsConceded = Int32.Parse(dataTable.Rows[0][6].ToString());
                    b.goalDifference = Int32.Parse(dataTable.Rows[0][7].ToString());
                }


                Session["d"] = a.teamName +" "+ homeScore +"-"+ awayScore +" "+ b.teamName;

                if (homeScore > awayScore)
                {
                    //home team wins
                    a.wins = a.wins + 1;
                    a.goals = a.goals + homeScore;
                    a.goalsConceded = a.goalsConceded + awayScore;
                    a.goalDifference = a.goals - a.goalsConceded;

                    //away team loses
                    b.loses = b.loses + 1;
                    b.goals = b.goals + awayScore;
                    b.goalsConceded = b.goalsConceded + homeScore;
                    b.goalDifference = b.goals - b.goalsConceded;
                }
                else if (awayScore > homeScore)
                {
                    //away team wins
                    b.wins = b.wins + 1;
                    b.goals = a.goals + awayScore;
                    b.goalsConceded = b.goalsConceded + homeScore;
                    b.goalDifference = b.goals - b.goalsConceded;

                    //home team loses
                    a.loses = a.loses + 1;
                    a.goals = a.goals + homeScore;
                    a.goalsConceded = a.goalsConceded + awayScore;
                    a.goalDifference = a.goals - a.goalsConceded;
                }
                else if (homeScore == awayScore)
                {
                    //Draw
                    a.draws = a.draws + 1;
                    a.goals = a.goals + homeScore;
                    a.goalsConceded = a.goalsConceded + awayScore;
                    a.goalDifference = a.goals - a.goalsConceded;

                    b.draws = b.draws + 1;
                    b.goals = b.goals + awayScore;
                    b.goalsConceded = b.goalsConceded + homeScore;
                    b.goalDifference = b.goals - b.goalsConceded;
                }

                cmd.CommandText = "UPDATE dbo.Football SET Wins = @wins, Draws = @draws, Loses = @loses, Points = @points, GamesPlayed = @played, Goals = @goals, GoalAgainst = @against , GoalDifference = @diff WHERE TeamName = @home";

                cmd.Parameters.AddWithValue("@home", a.teamName);
                cmd.Parameters.AddWithValue("@wins", a.wins);
                cmd.Parameters.AddWithValue("@draws", a.draws);
                cmd.Parameters.AddWithValue("@loses", a.loses);
                cmd.Parameters.AddWithValue("@points", a.points);
                cmd.Parameters.AddWithValue("@played", a.played);
                cmd.Parameters.AddWithValue("@goals", a.goals);
                cmd.Parameters.AddWithValue("@against", a.goalsConceded);
                cmd.Parameters.AddWithValue("@diff", a.goalDifference);
                cmd.ExecuteNonQuery();

                cmd.CommandText = "UPDATE dbo.Football SET Wins = @wins2, Draws = @draws2, Loses = @loses2, Points = @points2, GamesPlayed = @played2, Goals = @goals2, GoalAgainst = @against2, GoalDifference = @diff2 WHERE TeamName = @away";

                cmd.Parameters.AddWithValue("@away", b.teamName);
                cmd.Parameters.AddWithValue("@wins2", b.wins);
                cmd.Parameters.AddWithValue("@draws2", b.draws);
                cmd.Parameters.AddWithValue("@loses2", b.loses);
                cmd.Parameters.AddWithValue("@points2", b.points);
                cmd.Parameters.AddWithValue("@played2", b.played);
                cmd.Parameters.AddWithValue("@goals2", b.goals);
                cmd.Parameters.AddWithValue("@against2", b.goalsConceded);
                cmd.Parameters.AddWithValue("@diff2", b.goalDifference);
                cmd.ExecuteNonQuery();

                da.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
                Response.Redirect(Request.RawUrl);
            }
        }

        private void resetTable()
        {
            String s = ConfigurationManager.ConnectionStrings["FootballConString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();


                foreach (String t in teams)
                {
                    cmd.CommandText = "UPDATE dbo.Football SET Wins = @wins, Draws = @draws, Loses = @loses, Points = @points, GamesPlayed = @played, Goals = @goals, GoalAgainst = @against , GoalDifference = @diff WHERE TeamName = @team";
                    cmd.Parameters.AddWithValue("@team", t);
                    cmd.Parameters.AddWithValue("@wins", 0);
                    cmd.Parameters.AddWithValue("@draws", 0);
                    cmd.Parameters.AddWithValue("@loses", 0);
                    cmd.Parameters.AddWithValue("@points", 0);
                    cmd.Parameters.AddWithValue("@played", 0);
                    cmd.Parameters.AddWithValue("@goals", 0);
                    cmd.Parameters.AddWithValue("@against", 0);
                    cmd.Parameters.AddWithValue("@diff", 0);
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                }

                Response.Redirect(Request.RawUrl);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            resetTable();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            TextBox3.Visible = true;
            Button3.Visible = false;
            Button4.Visible = true;

            Label3.Visible = false;
            TextBox4.Visible = false;
            Button5.Visible = true;
            Button6.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String input = TextBox3.Text.Trim();
            String s = ConfigurationManager.ConnectionStrings["FootballConString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();



                if (!teams.Contains(input))
                {
                    if (count < 20)
                    {
                        cmd.CommandText = "INSERT INTO dbo.Football (TeamName,Wins,Draws,Loses,Points,GamesPlayed,Goals,GoalAgainst,GoalDifference) VALUES (@team,0,0,0,0,0,0,0,0)";
                        cmd.Parameters.AddWithValue("@team", input);
                        cmd.Parameters.AddWithValue("@wins", 0);
                        cmd.Parameters.AddWithValue("@draws", 0);
                        cmd.Parameters.AddWithValue("@loses", 0);
                        cmd.Parameters.AddWithValue("@points", 0);
                        cmd.Parameters.AddWithValue("@played", 0);
                        cmd.Parameters.AddWithValue("@goals", 0);
                        cmd.Parameters.AddWithValue("@against", 0);
                        cmd.Parameters.AddWithValue("@diff", 0);
                        cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Reached maximum number of team(20)');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('The team is already in the table');", true);
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void showDeleteComponents(object sender, EventArgs e)
        {
            Label3.Visible = true;
            TextBox4.Visible = true;
            Button5.Visible = false;
            Button6.Visible = true;

            Label2.Visible = false;
            TextBox3.Visible = false;
            Button3.Visible = true;
            Button4.Visible = false;
        }

        protected void deleteTeam(object sender, EventArgs e)
        {
            String input = TextBox4.Text.Trim();
            String s = ConfigurationManager.ConnectionStrings["FootballConString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = s;
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();


                if (teams.Contains(input))
                {
                    if (count > 2)
                    {
                        Response.Write(teams.Capacity);
                        cmd.CommandText = "DELETE FROM  dbo.Football WHERE TeamName = @team";
                        cmd.Parameters.AddWithValue("@team", input);
                        cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Minimum of 2 tables have to be in table');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('The team does not exist');", true);
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}