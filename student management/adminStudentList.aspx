<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminStudentList.aspx.cs" Inherits="student_management.adminStudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"><h1>Student List</h1>
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
                 <asp:LinkButton ID="linkbutton" OnClick="linkbutton_Click" runat="server" style="text-decoration: none; color: #007bff; cursor: pointer;" CommandArgument='<%# Eval("regno") %>'>Add Marks</asp:LinkButton>

               </ItemTemplate>
                        
</asp:TemplateField> 
                        </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
