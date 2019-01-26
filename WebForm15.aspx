<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="library_managemnet.WebForm15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 469px;
        }
        .auto-style3 {
            width: 469px;
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
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Number of Copies to be added </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">IsBn No</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FF3300" BorderColor="#CC0000" BorderStyle="Groove" Height="39px" Width="73px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
