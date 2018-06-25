<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select pass from login where email='" + email + "'");
    if (rs.next()) 
    {
    	/*mail code
    	paste your mail code here
    	------------------
    	Mail code*/
    	out.println("your password is --- ");
    	out.println(rs.getString("pass"));
    	//out.println("Password send to your email id successfully !"); 
    } 
  else 
    {
        out.println("Invalid Email id");
    }
%>