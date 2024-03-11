using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.ObjectModel;
using System.Reflection.Emit;
using System.Diagnostics;
using Microsoft.Ajax.Utilities;

namespace WebApplication4
{
    public partial class WebForm4 : System.Web.UI.Page
    {


        protected void Page_PreInit(object sender, EventArgs e)
        {
            Debug.WriteLine("-------- webform4 preinit");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager sm = System.Web.UI.ScriptManager.GetCurrent(this.Page);

            ReadOnlyCollection<RegisteredScript> rs = sm.GetRegisteredStartupScripts();



            sm.RegisterAsyncPostBackControl(Button1);

            Debug.WriteLine("-------- webform4 load");
            string _isasync = IsAsync ? "true" : "false";
            Debug.WriteLine($"----------- IsAsync {_isasync}");
            string _iscallback = IsCallback ? "true" : "false";
            Debug.WriteLine($"----------- IsCallback {_iscallback}");
            string _ispostback = IsPostBack ? "true" : "false";
            Debug.WriteLine($"----------- IsPostBack {_ispostback}");

            if (Page.IsPostBack)
            {
                // get a reference to ScriptManager and check if we have a partial postback
                if (ScriptManager.GetCurrent(this.Page).IsInAsyncPostBack)
                {
                    System.Web.Script.Serialization.JavaScriptSerializer json = new System.Web.Script.Serialization.JavaScriptSerializer();
                    ScriptManager.GetCurrent(this.Page).RegisterDataItem(Label2, "bonjour label2");
                    ScriptManager.GetCurrent(this.Page).RegisterDataItem(Label3, "more data label3");
                    ScriptManager.GetCurrent(this.Page).RegisterDataItem(Label4, "more data label4");

                    // partial (asynchronous) postback occured
                    // insert Ajax custom logic here
                    Debug.WriteLine("*****       ****** partial (asynchronous) postback occured");
                }
                else
                {
                    // regular full page postback occured
                    // custom logic accordingly
                    Debug.WriteLine("*****       ****** regular full page postback occured");
                }
            }

            int f = 1;



        }

        protected void ColorList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("------------- Button1_Click");
            Label1.Text = "Panel refreshed at " + DateTime.Now.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("------------- Button2_Click");
            Label1.Text = "Page refreshed.";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine("EV ------------- DropDownList1_SelectedIndexChanged");
            Label5.Text = DropDownList1.SelectedValue;
            Label6.Text = "changed "+DateTime.Now.ToLongTimeString();

            DropDownList2.Items.Clear();
            DropDownList2.Items.Add(new ListItem("UN", "1"));
            DropDownList2.Items.Add(new ListItem("DEUX", "2"));
            DropDownList2.Items.Add(new ListItem("TROIS", "3"));
            DropDownList2.Items.Add(new ListItem("QUATRE", "4"));
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("------------- Button3_Click");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("------------- Button4_Click");
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("------------- Button33_Click");
        }
    }
}