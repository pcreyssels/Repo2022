<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication1.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>TreeView Declarative Syntax Example</h3>
      
      <asp:TreeView id="SampleTreeView" 
        runat="server">
         
        <Nodes>
        
          <asp:TreeNode Value="Home" 
            NavigateUrl="Home.aspx" 
            Text="Home"
            Target="Content" 
            Expanded="True">
             
            <asp:TreeNode Value="Page 1" 
              NavigateUrl="Page1.aspx" 
              Text="Page1"
              Target="Content">
               
              <asp:TreeNode Value="Section 1" 
                NavigateUrl="Section1.aspx" 
                Text="Section 1"
                Target="Content"/>
                 
            </asp:TreeNode>              
            
            <asp:TreeNode Value="Page 2" 
              NavigateUrl="Page2.aspx"
              Text="Page 2"
              Target="Content">
               
            </asp:TreeNode> 
            
          </asp:TreeNode>
        
        </Nodes>
        
      </asp:TreeView>

    <hr />

    <asp:menu id="NavigationMenu"
        disappearafter="2000"
        staticdisplaylevels="2"
        staticsubmenuindent="10" 
        orientation="Vertical"
        font-names="Arial" 
        target="_blank"  
        runat="server">
        
        <staticmenuitemstyle backcolor="LightSteelBlue"
          forecolor="Black"/>
        <statichoverstyle backcolor="LightSkyBlue"/>
        <dynamicmenuitemstyle backcolor="Black"
          forecolor="Silver"/>
        <dynamichoverstyle backcolor="LightSkyBlue"
          forecolor="Black"/>
      
        <items>
          <asp:menuitem navigateurl="Home.aspx" 
            text="Home"
            tooltip="Home">
            <asp:menuitem navigateurl="Music.aspx"
              text="Music"
              tooltip="Music">
              <asp:menuitem navigateurl="Classical.aspx" 
                text="Classical"
                tooltip="Classical"/>
              <asp:menuitem navigateurl="Rock.aspx"
                text="Rock"
                tooltip="Rock"/>
              <asp:menuitem navigateurl="Jazz.aspx"
                text="Jazz"
                tooltip="Jazz"/>
            </asp:menuitem>
            <asp:menuitem navigateurl="Movies.aspx"
              text="Movies"
              tooltip="Movies">
              <asp:menuitem navigateurl="Action.aspx"
                text="Action"
                tooltip="Action"/>
              <asp:menuitem navigateurl="Drama.aspx"
                text="Drama"
                tooltip="Drama"/>
              <asp:menuitem navigateurl="Musical.aspx"
                text="Musical"
                tooltip="Musical"/>
            </asp:menuitem>
          </asp:menuitem>
        </items>
      
      </asp:menu>

</asp:Content>
