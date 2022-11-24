using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;

namespace WebApplication1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime d_f = new DateTime(2022, 3, 20, 18, 30, 00);

            DateTime d_o = new DateTime(2022, 4, 10, 09, 00, 00);

            aspspan1_df.InnerText = d_f.ToString("dddd dd MMMM yyyy");
            aspspan1_hf.InnerText = d_f.ToString("HH:mm");
            aspspan1_do.InnerText = d_o.Subtract(TimeSpan.FromDays(1)).ToString("dddd dd MMMM yyyy");

            aspspan2_df.InnerText = d_f.ToString("dddd dd MMMM yyyy");
            aspspan2_hf.InnerText = d_f.ToString("HH:mm");
            aspspan2_do.InnerText = d_o.Subtract(TimeSpan.FromDays(1)).ToString("dddd dd MMMM yyyy");

            aspspan3_do.InnerText = d_o.ToString("dddd dd MMMM yyyy");
            aspspan3_ho.InnerText = d_o.ToString("HH:mm");

            d_f.Subtract(TimeSpan.FromDays(1));
            string t = "z";
            
        }
    }
}