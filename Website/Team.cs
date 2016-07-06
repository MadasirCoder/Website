using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Website
{
    public class Team : iTeam
    {
        public String teamName { get; set; }
        public int played { get { return gamesPlayed(); } set { } }
        public int points { get { return calculatePoints(); } set { } }
        public int wins { get; set; }
        public int draws { get; set; }
        public int loses { get; set; }
        public int goals { get; set; }
        public int goalsConceded { get; set; }
        public int goalDifference { get; set; }

        public int calculatePoints()
        {
            int p = 0;
            p = wins * 3;
            p = p + (draws);
            return p;
        }

        public int gamesPlayed()
        {
            int p = 0;
            p = wins + draws + loses;
            return p;
        }
    }
}
