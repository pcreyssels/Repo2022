using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string date = "12/2029";
                DateTime dt = DateTime.ParseExact(date, "MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                string fg= DateTimeFormatInfo.CurrentInfo.GetMonthName(dt.Month);
                string fg1 = DateTimeFormatInfo.InvariantInfo.GetMonthName(dt.Month);

                DateTimeFormatInfo dfi = DateTimeFormatInfo.GetInstance(System.Globalization.CultureInfo.GetCultureInfo("fr"));
                string nom_mois = dfi.GetMonthName(dt.Month);

                string art = "de ";
                if (dt.Month == 4 || dt.Month == 4 || dt.Month == 8 || dt.Month == 10)
                    art = "d'";
                string texte_session = $" {art}{nom_mois} {dt.ToString("yyyy")}";

            string nm = dt.Month.ToString();

            int f = 0;

            //TextBox1.Attributes.Add("required pattern", "\\d{4}-\\d{2}-\\d{2}");
        }

        protected void CusvDatesSessionDelivrance_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}