using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * <div class="centegrid0">

                <div>
                    COL0
                </div>
                <div style="font-size: 1.5em">
                    COL1
                </div>
                <div>
                    COL2
                </div>
                <div>
                    <button runat="server" id="Button4" onserverclick="Button4_ServerClick">CLICK ME</button>
                    <button runat="server" id="Button5" onserverclick="Button5_ServerClick">CLICK ME2</button>
                </div>
                <div>
                    COL3
                </div>

            </div>
             */

            //lignes
            for (int lig = 0; lig < 4; lig++)
            {
                   
                for (int col = 0; col < 4; col++)
                {
                    HtmlGenericControl gct_cell = new HtmlGenericControl("div");
                    //gct.Attributes.Add("class", "row");
                    string color_code = "background-color:";
                    if (lig % 2 == 0)
                        color_code += "antiquewhite";
                    else
                        color_code += "aquamarine";
                    gct_cell.Attributes.Add("style", color_code);
                    string v = "cell" + lig.ToString() + "_" + col.ToString();
                    

                    HtmlButton hb = null;
                    if (col==3)
                    {
                        hb = new HtmlButton();
                        hb.ID = "bhtmlB" + lig.ToString();
                        hb.InnerText = "CLICKme8";
                        hb.ServerClick += new EventHandler(this.dbg_Click);
                        gct_cell.Controls.Add(hb);
                    }
                    else
                        gct_cell.InnerText = v;

                    PlaceHolder0.Controls.Add(gct_cell);
                }

            }
        }

        protected void Button4_ServerClick(object sender, EventArgs e)
        {

        }

        protected void Button5_ServerClick(object sender, EventArgs e)
        {

        }

        protected void dbg_Click(object sender, EventArgs e)
        {
            int y = 0;

        }

        protected void Button1_ServerClick(object sender, EventArgs e)
        {

        }
    }
}