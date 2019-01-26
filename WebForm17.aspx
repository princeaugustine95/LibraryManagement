<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="library_managemnet.WebForm17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Filter
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT * FROM [Book] WHERE ([bookname] = @bookname)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="bookname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
