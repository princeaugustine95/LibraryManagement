<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="library_managemnet.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 416px;
            text-align: right;
        }
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
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            width: 94px;
            text-align: right;
        }
        .auto-style5 {
            width: 94px;
            text-align: right;
            height: 4px;
        }
        .auto-style6 {
            width: 115px;
            height: 4px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <ul>
   <li><a href="WebForm9.aspx">Home </a></li>
  <li><a href="WebForm4.aspx">About</a></li>
  <li><a href="WebForm6.aspx">Books</a></li>
  <li><a href="WebForm5.aspx">Login</a></li>
  <li style="float:right"><a class="active" href="WebForm10.aspx">Admin</a></li>
  
  
</ul>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="auto-style7">
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="261px" Width="627px">
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
            </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project3ConnectionString2 %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Name of the Book</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Author</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Isbn No</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Quantity</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Issue" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
