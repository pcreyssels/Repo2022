<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form method="Post"
         enctype="application/x-www-form-urlencoded" 
         runat="server" id="myform">

      <h3> HtmlForm Example </h3>

      <table>
         <tr>
            <td colspan="5">
               Enter integer values into the text boxes. <br />
               Click the Add button to add the two values. <br />
               Click the Reset button to reset the text boxes.
            </td>
         </tr>
         <tr>
            <td colspan="5">
                
            </td>
         </tr>
         <tr align="center">
            <td>
               <input id="Value1"
                      type="Text"
                      size="2"
                      maxlength="3"
                      value="1"
                      runat="server"/>
            </td>
            <td>
               + 
            </td>
            <td>
               <input id="Value2"
                      type="Text"
                      size="2"
                      maxlength="3"
                      value="1"
                      runat="server"/>
            </td>
            <td>
               =
            </td>
            <td>
               <span id="AnswerMessage"
                     runat="server"/>
            </td>
         </tr>
         <tr>
            <td colspan="2">
               <asp:RequiredFieldValidator
                    ID="Value1RequiredValidator"
                    ControlToValidate="Value1"
                    ErrorMessage="Please enter a value.<br />"
                    Display="Dynamic"
                    runat="server"/>

               <asp:CompareValidator
                    ID="Value1MinCompareValidator"
                    ControlToValidate="Value1"
                    Operator="LessThan"
                    Type="Integer"
                    ValueToCompare="100"
                    ErrorMessage="Please enter an integer less than 100.<br />"
                    Display="Dynamic"
                    runat="server"/>

               <asp:CompareValidator
                    ID="Value1MaxCompareValidator"
                    ControlToValidate="Value1"
                    Operator="GreaterThan"
                    Type="Integer"
                    ValueToCompare="0"
                    ErrorMessage="Please enter an integer greater than 0.<br />"
                    Display="Dynamic"
                    runat="server"/>
            </td>
            <td colspan="2">
               <asp:RequiredFieldValidator
                    ID="Value2RequiredValidator"
                    ControlToValidate="Value2"
                    ErrorMessage="Please enter a value.<br />"
                    Display="Dynamic"
                    runat="server"/>

               <asp:CompareValidator
                    ID="Value2MinCompareValidator"
                    ControlToValidate="Value2"
                    Operator="LessThan"
                    Type="Integer"
                    ValueToCompare="100"
                    ErrorMessage="Please enter an integer less than 100.<br />"
                    Display="Dynamic"
                    runat="server"/>

               <asp:CompareValidator
                    ID="Value2MaxCompareValidator"
                    ControlToValidate="Value2"
                    Operator="GreaterThan"
                    Type="Integer"
                    ValueToCompare="0"
                    ErrorMessage="Please enter an integer greater than 0.<br />"
                    Display="Dynamic"
                    runat="server"/>

            </td>
            <td>
                
            </td>
         </tr>
         <tr align="center">
            <td colspan="4">
               <input type="Submit"
                        id="AddButton2"
                      name="AddButton"
                      value="Add"
                      onserverclick="AddButton2_ServerClick"
                      runat="server"/>

                  

               <input type="Reset"
                      name="AddButton"
                      value="Reset"
                      runat="server"/>
            </td>
            <td>
                
            </td>
         </tr>
      </table>

   </form>
</body>
</html>
