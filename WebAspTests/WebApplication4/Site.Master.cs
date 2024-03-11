using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class SiteMaster : MasterPage
    {
        // https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.scriptmanager?view=netframework-4.8.1#partial_page_rendering
        protected void Page_Init(object sender, EventArgs e)
        {
            ScriptManager1.SupportsPartialRendering = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ScriptManager1_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {

        }

        protected void ScriptManager1_ResolveScriptReference(object sender, ScriptReferenceEventArgs e)
        {
           // Debug.WriteLine($"ScriptManager1_ResolveScriptReference {e.Script.Name}");
        }

        protected void ScriptManager1_DataBinding(object sender, EventArgs e)
        {

        }
    }
}