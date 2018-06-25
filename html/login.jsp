<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where id='" + username + "' and pass='" + pass + "'");
    if (rs.next()) 
    {
       //rs.getString("fname");
       session.setAttribute("UID", rs.getString("id"));
       
       // session.setAttribute("emailid", emailid);
       // out.println("welcome " + emailid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("main.jsp");
    } 
    else 
    {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>