<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="library_managemnet.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 364px;
        }
        .auto-style3 {
            width: 364px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url('Images/1140-yeager-sell-your-used-books.imgcache.rev661df3f628ce819a8306ca96aa6bc36f.jpg')">
    <form id="form1" runat="server">
        <div class="auto-style4" style="font-weight: bolder; font-size: xx-large; color: #FF0000">
            Admin Login
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-weight: bolder; font-size: xx-large; color: #800000">EmailID </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FF6600" BorderColor="Black" BorderStyle="Groove" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
