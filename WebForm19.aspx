<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm19.aspx.cs" Inherits="library_managemnet.WebForm19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 340px;
            text-align: left;
        }
        .auto-style3 {
            width: 340px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Name of the Book</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Name of the Author</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Isbn Number </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Quantity</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FF9900" BorderColor="Black" BorderStyle="Double" Height="47px" Width="84px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
