<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm24.aspx.cs" Inherits="library_managemnet.WebForm24" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
    <h1>Book Details vs Quantity</h1>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div>
        </div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" Height="436px" Width="648px">
            <series>
                <asp:Series Name="Series1" XValueMember="bookname" YValueMembers="quantity">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT [quantity], [bookname] FROM [Book]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
