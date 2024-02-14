

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="student_management.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
 
                    <asp:BoundField DataField="regno" HeaderText="reg no."></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name"></asp:BoundField>
                    <asp:BoundField DataField="age" HeaderText="Age"></asp:BoundField>
                    <asp:BoundField DataField="mobile" HeaderText="Mobile"></asp:BoundField>    
                    <asp:BoundField DataField="class" HeaderText="Class"></asp:BoundField>
                    <asp:BoundField DataField="Photo" HeaderText="Photo"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="Password"></asp:BoundField>
              <asp:TemplateField>
               <ItemTemplate>
                 <asp:LinkButton ID="linkbutton" OnClick="linkbutton_Click" runat="server" style="text-decoration: none; color: #007bff; cursor: pointer;" CommandArgument='<%# Eval("regno") %>'>edit</asp:LinkButton>

               </ItemTemplate>
                        
</asp:TemplateField> 
                </Columns>
            </asp:GridView>
            Regno<asp:TextBox ID="txtreg" runat="server"></asp:TextBox>
            Name<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            Age<asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            Mobile<asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            class<asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
            email<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            password<asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            <asp:Button id="butn" OnClick="butn_Click" runat="server" Text="Update"/>

        </div>
    </form>
</body>
</html>
