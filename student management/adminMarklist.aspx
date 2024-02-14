<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminMarklist.aspx.cs" Inherits="student_management.adminMarklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <table>
                <tr><td>MarkList</td></tr>
                 <tr><td>Name</td><td>
     <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td></tr>
                <tr><td>Maths</td><td>
                    <asp:TextBox ID="txtmaths" runat="server"></asp:TextBox></td></tr>
                 <tr><td>English</td><td>
     <asp:TextBox ID="txtenglish" runat="server"></asp:TextBox></td></tr>
                 <tr><td>Java</td><td>
     <asp:TextBox ID="txtjava" runat="server"></asp:TextBox></td></tr>
                 <tr><td>c++</td><td>
     <asp:TextBox ID="txtc" runat="server"></asp:TextBox></td></tr>
                <tr><td>Total</td><td>
                    <asp:TextBox ID="txttotal" ReadOnly="true" runat="server"></asp:TextBox></td></tr>
                <tr><td>
                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit" /></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
