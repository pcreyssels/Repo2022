<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm16.aspx.cs" Inherits="WebApplication1.WebForm16" %>

<!DOCTYPE html>

<script runat="server">
  public void Page_Load(Object sender, EventArgs e)
  {
    // Define the name and type of the client script on the page.
    String csname = "OnSubmitScript";
    Type cstype = this.GetType();
        
    // Get a ClientScriptManager reference from the Page class.
    ClientScriptManager cs = Page.ClientScript;

    // Check to see if the OnSubmit statement is already registered.
    if (!cs.IsOnSubmitStatementRegistered(cstype, csname))
    {
      String cstext = "document.write('Text from OnSubmit statement');";
      cs.RegisterOnSubmitStatement(cstype, csname, cstext);
    }

  }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head>
    <title>ClientScriptManager Example</title>
  </head>
  <body>
      <h4>BONJOUR</h4>
      <hr />
     <form    id="Form1"
            runat="server">
     <input type="submit"
            value="Submit" />
     </form>
  </body>
</html>
