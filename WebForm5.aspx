<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="library_managemnet.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 369px;
        }
        .auto-style4 {
            width: 369px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body style="background-image: url('Images/ijo8KeK.jpg')">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-size: xx-large; font-style: normal; color: #000000">
            <strong style="color: #FF0000">Login
            </strong>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4" style="color: #FF0000">Email Id</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="color: #FF0000">Password </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#FF5050" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" />
                    </td>
                </tr>
            </table>
            <h3><a href ="WebForm16.aspx">Register here</a></h3>
        </div>
    </form>
</body>
</html>
