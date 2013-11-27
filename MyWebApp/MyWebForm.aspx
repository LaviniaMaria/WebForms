<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="MyWebApp.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title id="pageTitle" runat="server"></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel runat="server" BorderColor="black" BorderStyle="Dashed" ID="myPanel">
        <asp:Label id="label" runat="server">Nume</asp:Label>
        <asp:TextBox runat="server" ID="field"></asp:TextBox>
        <asp:Button runat="server" Text="Click" onClick="changeText"/>
        <asp:Button runat="server" Text="New title" onClick="changeTitle"/>
        <asp:Button runat="server" Text="Remove" onClick="removeButton"/>
        <asp:Button runat="server" Text="ShowListItem" onClick="showItem"/>
        <asp:DropDownList runat="server" ID="list">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>.Net</asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
          <asp:CheckBox runat="server" OnCheckedChanged="modifyPanelState"  AutoPostBack="True" />
      
    </div>
        <asp:Label id="label2" runat="server"></asp:Label>
        <asp:Button runat="server" Text="Concat" onClick="changeText"/>
    </form>
</body>
</html>
