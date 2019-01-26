<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="library_managemnet.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
         .auto-style1 {
             width: 100%;
         }
         .auto-style4 {
             text-align: left;
         }
         .auto-style5 {
             width: 449px;
             text-align: right;
         }
         .auto-style6 {
             margin-left: 20px;
         }
         .auto-style7 {
             text-align: right;
         }
         .auto-style8 {
             text-align: center;
         }
     </style>
</head>
<body style="background-image: url('Images/ijo8KeK.jpg')">
     <div class="auto-style7">
     <ul>
   <li><a href="WebForm9.aspx">Home </a></li>
  <li><a href="WebForm4.aspx">About</a></li>
  <li><a href="WebForm6.aspx">Books</a></li>
  <li><a href="WebForm5.aspx">Login</a></li>
  <li style="float:right"><a class="active" href="WebForm10.aspx">Admin</a></li>
  
  
</ul>
    
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Log Out" />
        </div>
        <table class="auto-style1" style="background-color: #FFFF00">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style5">Search By Bookname </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" style="height: 26px" />
                </td>
            </tr>
            
            <tr>
                <td class="auto-style5">Search by Authorname</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" />
                </td>
            </tr>
            
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="145px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="754px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Isbnno" HeaderText="Isbnno" SortExpression="Isbnno" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT * FROM [Book] WHERE ([bookname] = @bookname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox5" Name="bookname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            &nbsp;</asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style8">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="758px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="Isbnno" HeaderText="Isbnno" SortExpression="Isbnno" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT * FROM [Book] WHERE ([bookname] = @bookname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox5" Name="bookname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
           
        </asp:Panel>
         <asp:Panel ID="Panel3" runat="server">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="470px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="Isbnno" HeaderText="Isbnno" SortExpression="Isbnno" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString %>" SelectCommand="SELECT * FROM [Book] WHERE ([Author] = @Author)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox6" Name="Author" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>



        <p class="auto-style8">
            Name of the Book <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
        </p>
        <p class="auto-style8">
            Author<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style8">
            IsbnNo<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style8">
            Number Of Books Available<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style8">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Issue" />
        </p>



    </form>
     </div>
</body>
</html>
