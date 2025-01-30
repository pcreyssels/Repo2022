using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CssStyleCollection csc = bo1.Style;


            TemplateControl tc = bo1.TemplateControl;

            int fin = 1;

            
        }

        protected void bo1_Click(object sender, EventArgs e)
        {
            CssStyleCollection csc = bo1.Style;

            TemplateControl tc = bo1.TemplateControl;
            
            int fin = 1;
        }
    }
}