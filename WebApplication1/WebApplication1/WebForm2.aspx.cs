using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick()
        {

        }

        protected void AddButton2_ServerClick(Object sender, EventArgs e)
        {
            int Answer; 

            // Calculate and display the result.
             Answer = Convert.ToInt32(Value1.Value) + Convert.ToInt32(Value2.Value);
            AnswerMessage.InnerHtml = Answer.ToString();

        }
    }
}