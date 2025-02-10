using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected  void ValidateBtn_Click(Object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //lblOutput.Text = "Required field is filled!";
            }
            else
            {
                //lblOutput.Text = "Required field is empty!";
            }
        }

        protected void ValidateBtn_Click1(object sender, EventArgs e)
        {

        }
    }
}