using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string n = "non";
            
            if (Session.IsNewSession) n = "oui";
            string info = $"session id : {Session.SessionID}, newsession : {n.ToString()}";
            labelabout.Text = info;
            Debug.WriteLine(info);
          
            
        }
    }
}