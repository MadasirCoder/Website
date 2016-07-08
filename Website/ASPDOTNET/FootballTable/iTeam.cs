using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Website
{
    public interface iTeam
    {
        String teamName { get; set; }
        int played { get; set; }
        int points { get; set; }
        int wins { get; set; }
        int draws { get; set; }
        int loses { get; set; }
        int goals { get; set; }
        int goalsConceded { get; set; }
        int goalDifference { get; set; }
    }
}
