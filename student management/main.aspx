﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="student_management.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
 </head>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Student</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="main.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
         <li class="nav-item">
   <a class="nav-link" href="homepage.aspx">My Profile</a>
 </li>
      <li class="nav-item">
        <a class="nav-link" href="studentmarklist.aspx">Marks</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="notes.aspx">Notes</a>
      </li>
     
    </ul>
      <h1>Welcome to Student Portal</h1>
  </div>
</nav>
        </div>
    </form>
</body>
</html>
