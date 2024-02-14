<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentmarklist.aspx.cs" Inherits="student_management.studentmarklist" %>

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
 
                    <asp:BoundField DataField="name" HeaderText="Name"></asp:BoundField>
                    <asp:BoundField DataField="maths" HeaderText="maths"></asp:BoundField>
                    <asp:BoundField DataField="english" HeaderText="english"></asp:BoundField>
                    <asp:BoundField DataField="java" HeaderText="java"></asp:BoundField>    
                    <asp:BoundField DataField="c++" HeaderText="c++"></asp:BoundField>
                   
              <asp:TemplateField>
               
                        
</asp:TemplateField> 
                        </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
