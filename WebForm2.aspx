<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="library_managemnet.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 484px;
        }
        .auto-style3 {
            width: 484px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style4">
            <strong>CHECKOUT </strong></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Book Isbn No</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Issue Date</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Due Date</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Issue" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="princeaugustine95@gmail.com" Visible="False"></asp:Label>
            &nbsp;
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label1" Visible="False"></asp:Label>
&nbsp;&nbsp;:<asp:Label ID="Label6" runat="server" Text="96prince786@" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
