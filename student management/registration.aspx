<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="student_management.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Register no.</td><td>
                        <asp:TextBox ID="txtreg" runat="server"></asp:TextBox></td></tr>
                <tr><td>Name</td><td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Age</td><td>
     <asp:TextBox ID="txtage" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Mobile</td><td>
     <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Class</td><td>
     <asp:TextBox ID="txtclass" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Photo</td><td>
                     <asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
                 <tr><td>Email</td><td>
     <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Password</td><td>
     <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td></tr>
                 <tr> <td>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
