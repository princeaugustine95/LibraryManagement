<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="library_managemnet.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 470px;
            text-align: right;
        }
        .auto-style3 {
            width: 470px;
            text-align: right;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <center><h1><bold>Register</bold></h1></center>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Username</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User name is Required "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Email </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Is required "></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the valid email id " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Password </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is Required "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Confrim Password </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Confrim Password is Required"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: xx-large; font-weight: bolder; color: #FF0000">Are you Student,Teacher or Satff<br />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Teacher </asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="category is Required "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="Red" BorderColor="Black" BorderStyle="Groove" Height="41px" Width="102px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
