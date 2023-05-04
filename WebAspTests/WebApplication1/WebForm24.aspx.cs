using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton_group_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton_refassi.Checked)
            {
                Panel_statut.Visible = true;
            }
            if (RadioButton_primoarr.Checked)
            {
                Panel_statut.Visible = false;
            }
        }

        protected void CustomValidator_choixrefugie_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                bool none = !Checkbox_refugie.Checked &&
                    !CheckBox_demasile.Checked &&
                    !CheckBox_BenProSub.Checked &&
                    !CheckBox_BenProTemp.Checked &&
                    !CheckBox_apatride.Checked &&
                    RadioButton_refassi.Checked;
                if (none)
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }

            catch (Exception)
            {
                args.IsValid = false;

            }
        }

        protected void CustomValidator_choixstatut_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                if (!RadioButton_refassi.Checked && !RadioButton_primoarr.Checked)
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }

            catch (Exception)
            {
                args.IsValid = false;

            }
        }
    }
}