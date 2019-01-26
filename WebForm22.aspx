<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm22.aspx.cs" Inherits="library_managemnet.WebForm22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="574px">
                <Columns>
                    <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
                    <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                    <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                    <asp:BoundField DataField="Due" HeaderText="Due" SortExpression="Due" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT * FROM [book_request]"></asp:SqlDataSource>
    </form>
</body>
</html>
