<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="WebApplication1.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <h3>BONJOUR </h3>
    <hr />

    <div class="centegrid0">

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
    <hr />


    <h3>BONJOUR 2 </h3>

    <div class="centegrid0">
        <asp:PlaceHolder runat="server" ID="PlaceHolder0"></asp:PlaceHolder>
    </div>


     <hr />


    <div class="centegrid0">
        <span> A </span> 
        <span> B </span> 
        <span> C </span>
        <span> D </span>
        <span> E </span>
        <input type="text" />
        <input type="file" />
    </div>

    <hr />


    <div class="centegrid1">
        <span> A </span> 
        <span> B </span> 
        <span> C </span>
        <span> D </span>
        <span> E </span>
        <input type="text" />
        <input type="file" />
        <span class="box1" >F</span>
        <span style="grid-column: 3 / 4; grid-row: 4 / 5 "> G </span>
    </div>

    <hr />


    Select File to Upload: 
    <input id="File1"
        type="file"
        runat="server" />

    <input type="button" 
              id="Button1" 
              value="Upload" 
              onserverclick="Button1_ServerClick"
              runat="server" />

    <span>invistart</span>
    <asp:Button ID="hidden" runat="server" Text="" Style="display:none" OnClick="hidden_Click"/>
    <asp:HiddenField runat="server" ID="hiddenfield" ClientIDMode="Static" />
    <span>invistop</span>



    <div  onclick="fire('aze')" > CLIC VIA HIDEN 3</div>
    <div  onclick="fire('ed9')" > CLIC VIA HIDEN 9</div>
    <hr />

    <div id ="eclic" onclick="alert('click event occurred')" > ELEMENT CLIQUABLE </div>
    <div id ="eclic2" onclick="red()" > ELEMENT CLIQUABLE 2 </div>
    <input id ="eclic3" onclick="event => red()" />
    <button onclick="red()">CLICK</button>

    <div runat="server" onselect=""></div>

    <asp:Button runat="server" ID="b1" OnClick="b1_Click" Text="BOUTON" />

    <script type="text/javascript">
        function red() {
            document.getElementById('eclic').innerText = 'BONJOUR';
            document.getElementById('eclic').style.backgroundColor = 'green';
            //alert('click event occurred');
            //eclick.style.color = `red';
        }

        function blue() {
           document.getElementById('eclic').style.backgroundColor = 'blue';
        }

        function fire(number0) {
            document.getElementById('hiddenfield').value = number0;
            document.getElementById('<%=hidden.ClientID%>').click();
            document.getElementById('eclic').style.backgroundColor = 'yellow';
        }
        
    </script>

</asp:Content>
