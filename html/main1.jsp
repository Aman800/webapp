
<%@ page import ="java.sql.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.SQLException" %>
<%
    String client_id = request.getParameter("client_id");    
    String client_name = request.getParameter("client_name");
    String location = request.getParameter("location");
    String contact_person = request.getParameter("contact_person");
    String address = request.getParameter("address");
	String phone_no = request.getParameter("phone_no");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pincode = request.getParameter("pincode");
	String emailid = request.getParameter("emailid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into client_details values ('" + client_id + "','" + client_name + "','" + location + "','" + contact_person + "','" + address + "','" + phone_no + "','" + city + "','" + state + "','" + pincode + "','" + emailid + "')");
    if (i > 0) {
        //session.setAttribute("emailid", user);
        response.sendRedirect("main_welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>