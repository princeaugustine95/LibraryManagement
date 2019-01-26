<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm23.aspx.cs" Inherits="library_managemnet.WebForm23" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: right;
            width: 409px;
        }
        .auto-style4 {
            height: 23px;
            text-align: right;
            width: 409px;
        }
        .auto-style5 {
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Isbn No </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Emailid</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
