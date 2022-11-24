using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
<<<<<<< HEAD
=======
using System.Web.UI.HtmlControls;
>>>>>>> dc4d0df8c5759b8227019529d6bd0b239c6968aa
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

<<<<<<< HEAD
=======
            int k = 0;
            HtmlGenericControl gct_0 = null;
            for (int i = 0; i < 3; i++)
            {
                k += 10;
                string kv = k.ToString();
                gct_0 = new HtmlGenericControl("div");
                String prelit = $"<div class=\"row\"><div class=\"col-sm-3 \">{k.ToString()}</div><div class=\"col-sm-3\">{(k + 2).ToString()}</div><div class=\"col-sm-3\">{(k + 6).ToString()}</div><div class=\"col-sm-3\">";
                HtmlButton hb = new HtmlButton();
                hb.ID = "bhtml" + i.ToString();
                hb.InnerText = "CLICKme7";
                hb.ServerClick += new EventHandler(this.dbg_Click);
                String postlit = " </div></div>";
                gct_0.Controls.Add(new LiteralControl(prelit));
                gct_0.Controls.Add(hb);
                gct_0.Controls.Add(new LiteralControl(postlit));

                PlaceHolderN.Controls.Add(gct_0);
            }


            for (int i = 0; i < 3; i++)
            {
                k += 10;
                string kv = k.ToString();
                String prelit = $"<div class=\"row\"><div class=\"col-sm-3 \">{k.ToString()}</div><div class=\"col-sm-3\">{(k + 2).ToString()}</div><div class=\"col-sm-3\">{(k + 6).ToString()}</div><div class=\"col-sm-3\">";
                HtmlButton hb = new HtmlButton();
                hb.ID = "bhtmlA" + i.ToString();
                hb.InnerText = "CLICKme7";
                hb.ServerClick += new EventHandler(this.dbg_Click);
                String postlit = " </div></div>";
                PlaceHolderZ.Controls.Add(new LiteralControl(prelit));
                PlaceHolderZ.Controls.Add(hb);
                PlaceHolderZ.Controls.Add(new LiteralControl(postlit));

                
            }

            /*
             *  <div class="row">
                    <div class="col-sm-3 ">
                        COL0
                    </div>
                    <div class="col-sm-3">
                        COL1
                    </div>
                    <div class="col-sm-3">
                        COL2
                    </div>
                    <div class="col-sm-3">
                        <button runat="server" id="bhtml" onserverclick="bhtml_ServerClick">CLICK ME</button>
                        <button runat="server" id="Button2" onserverclick="bhtml_ServerClick">CLICK ME2</button>
                    </div>
                </div>
             */

            for (int i = 0; i < 3; i++)
            {
                HtmlGenericControl gct_top = new HtmlGenericControl("div");
                gct_top.Attributes.Add("class", "row");
                for (int ii=0; ii<3; ii++) 
                {
                    HtmlGenericControl gct_row = new HtmlGenericControl("div");
                    gct_row.Attributes.Add("class", "col-sm-3");
                    gct_row.InnerHtml = ii.ToString();
                    gct_top.Controls.Add(gct_row);
                }
                
                HtmlButton hb = new HtmlButton();
                hb.ID = "bhtmlB" + i.ToString();
                hb.InnerText = "CLICKme8";
                hb.ServerClick += new EventHandler(this.dbg_Click);
                
                gct_top.Controls.Add(hb);

                PlaceHolderW.Controls.Add(gct_top);

            }

           


        }

        protected void bhtml_ServerClick(object sender, EventArgs e)
        {
            int i = 2;
        }

        protected void bg_Click(object sender, EventArgs e)
        {
            int y = 0;
        }

        protected void dbg_Click(object sender, EventArgs e)
        {
            int y = 0;
>>>>>>> dc4d0df8c5759b8227019529d6bd0b239c6968aa
        }
    }
}