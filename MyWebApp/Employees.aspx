<%@ Import Namespace="System.Data" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="MyWebApp.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style1.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <!--
    <asp:Repeater id="listRepeater" runat="server">
        <HeaderTemplate>
            <table border="1">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Manager</th>
                <th>Salary</th>
            </tr>
            </thead>
            <tbody>
        </HeaderTemplate>

        <ItemTemplate>
              <tr>
                  <td><%# Eval("Id") %></td>
                  <td><%# Eval("Name")%></td>
                  <td><%# Eval("Manager.Name")%></td>
                  <td><%# Eval("Salary")%></td>
              </tr>
          
        </ItemTemplate>

        <FooterTemplate>
            </tbody>
            </table>
        </FooterTemplate>

    </asp:Repeater>-->
    
         <asp:GridView ID="gridView" runat="server" AutoGenerateColumns="false" OnRowCommand="gridView_RowCommand" DataKeyNames="Id"  >
         <rowstyle cssclass="gridViewRow" forecolor="blue" backcolor="White"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Manager.Name" HeaderText="Manager" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" />
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" id="editButton" Text="Edit" CommandName="editEmployee"
                                CommandArgument='<%#((GridViewRow)Container).RowIndex%>'  />
                </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" id="deleteButton" Text="Delete" CommandName="deleteEmployee"
                                CommandArgument='<%#((GridViewRow)Container).RowIndex%>'  />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
             
        </asp:GridView>
       
        <asp:LinkButton runat="server" Text="Add new employee" PostBackUrl="Employee.aspx/id=0" target="_blank"></asp:LinkButton>
    </div>
    
       
    </form>
</body>
</html>
