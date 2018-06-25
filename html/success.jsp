<!DOCTYPE HTML>
<%@ page import="java.lang.*" %>
<html>

<head>
  <title>Invoicing Application</title>
  
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the color of the text -->
          <h1><a href="index.jsp">ALUMNI_<span class="logo_colour">PORTAL</span></a></h1>
          <h2>ITS THE EDUCATION GROUP</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="alumni/updateprofile.jsp">Update Profile</a></li>
          <li><a href="alumni/upcomingevents.jsp">Upcoming Events</a></li>
		  <li><a href="alumni/alumnipost.jsp">Post</a></li>
		  <li><a href="alumni/searchalumni.jsp">Search Alumni's</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
    <%
   // String uid1=String (session.getAttribute("UID"));
    %>
	<h2>	WELCOME :  <%=session.getAttribute("UID") %> </h2>
	<h2 align="right"> <a href="http://localhost:8083/alumni_portal/index.jsp">++Logout</a></h2>
 <div id="footer">
            <p><a href="index.jsp">Home</a> | <a href="loginsignup.jsp">Login/Signup</a> | <a href="contact.jsp">Contact Us</a></p>
      <p>Copyright &copy; ITS</p>
    </div>
  </div>
</body>
</html>
