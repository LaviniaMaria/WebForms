<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="MyWebApp.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title id="pageTitle" runat="server"></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:HyperLink id="link1" NavigateUrl="/About.aspx" runat="server"  text="New page" Target="_blank" />
    <asp:Panel runat="server" BorderColor="black" BorderStyle="Dashed" ID="myPanel" width="500">
        <asp:Label id="label" runat="server">Nume</asp:Label>
        <asp:TextBox runat="server" ID="field"></asp:TextBox>
        <asp:Button runat="server" Text="Change text" onClick="changeText"/>
        <br />

        <asp:Button runat="server" Text="New title" onClick="changeTitle"/>
        <br />

        <asp:Panel ID="addRemovePanel" runat="server">
           <asp:Button runat="server" Text="Remove" onClick="removeButton"/>
        </asp:Panel>   
        <br />

        <asp:DropDownList runat="server" ID="list">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>.Net</asp:ListItem>
        </asp:DropDownList>
        <asp:Button runat="server" Text="ShowListItem" onClick="showItem"/>
        <br />

        <asp:LinkButton runat="server" onClick="openNewPage">New page</asp:LinkButton>
        <br />

        <asp:Button runat="server" OnClick="openNewPage"  Text="New page"/>
        </asp:Panel>

          <asp:CheckBox runat="server" OnCheckedChanged="modifyPanelState"  AutoPostBack="True" />
      
    </div>
        <asp:Label id="label2" runat="server" EnableViewState="false"></asp:Label>
        <asp:Button runat="server" Text="Concat" onClick="concatText"/>
    </form>
</body>
</html>
