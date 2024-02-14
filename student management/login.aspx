<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="student_management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr><td>Email</td><td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td></tr>
                <tr><td>Password</td><td>
                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td></tr>
                <tr><td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"
                        /></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
