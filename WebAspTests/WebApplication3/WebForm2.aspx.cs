using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hf1.Value = "A B C";
            lab1.Text = "initial";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void bval_Click(object sender, EventArgs e)
        {

        }
    }
}