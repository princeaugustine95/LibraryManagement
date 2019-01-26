<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="library_managemnet.WebForm7" %>

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
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">You Selected </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter your Email Id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#CC0000" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
