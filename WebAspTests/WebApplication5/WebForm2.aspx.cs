using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void B2_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                i = 0;
            }
            else
            {
                i = 1;
            }
        }
    }
}