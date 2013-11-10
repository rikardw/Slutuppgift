﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="skotsel.aspx.cs" Inherits="Slutuppgift.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
      
      <h2>Rapportering</h2>       
            Här kan du rapportera skutna älgar <p/>
            <asp:ListBox ID="lbjaktlag" runat="server" Width="128px"></asp:ListBox>
        <p>            
           <asp:TextBox ID="skytt" runat="server" placeholder="Namn på skytt" Style="text-align: left"></asp:TextBox>           
            <asp:RangeValidator ControlToValidate="skytt" Min="2" Max="30" Type="string" EnableClientScript="false" Text="Namn måste vara mellan 2-30 bokstäver" runat="server" ID="RangeValidatorNamn" />
        </p>
        <p>                        
            <asp:TextBox ID="datum" runat="server" placeholder="Datum"></asp:TextBox>           
        </p>
        <p>            
            <asp:DropDownList ID="kön" runat="server" Width="157px">
                <asp:ListItem>Hane</asp:ListItem>
                <asp:ListItem>Hona</asp:ListItem>
            </asp:DropDownList>
            
        </p>
        <p>          
            <asp:TextBox ID="vikt" runat="server" placeholder="Vikt (kilo)"></asp:TextBox>
            <asp:RangeValidator ControlToValidate="vikt" MinimumValue="10" MaximumValue="850" Type="Integer" EnableClientScript="false" Text="Vikt anges mellan 10 och 850 kilo" runat="server" ID="RangeValidatorVikt" />
        </p>

        <p>            
            <asp:TextBox ID="taggar" runat="server" placeholder="Antal taggar"></asp:TextBox>
             <asp:RangeValidator ControlToValidate="taggar" MinimumValue="0" MaximumValue="50" Type="Integer" EnableClientScript="false" Text="Max antal taggar är 50" runat="server" ID="RangeValidatorTaggar" />
        </p>
       
        <p>            
            <asp:TextBox ID="ålder" runat="server" placeholder="Ålder" ></asp:TextBox>
            <asp:RangeValidator ControlToValidate="ålder" MinimumValue="0" MaximumValue="50" Type="Integer" EnableClientScript="false" Text="Maxålder är 50 år" runat="server" ID="RangeValidatorÅlder" />
        </p>
        <p>
            <asp:Button ID="submit" runat="server" Text="Skicka uppgifter" OnClick="submit_Click" />
        </p>
    
    <script type="text/javascript" src="slutuppgift.js"></script>

</asp:Content>
