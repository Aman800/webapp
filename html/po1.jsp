
<%@ page import ="java.sql.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.SQLException" %>
<%
    String po_no = request.getParameter("po_no");    
    String type = request.getParameter("type");
    String quarter = request.getParameter("quarter");
    String po_date = request.getParameter("po_date");
    String client_id = request.getParameter("client_id");
	String client_name = request.getParameter("client_name");
	String desc_of_service = request.getParameter("desc_of_service");
	String currency = request.getParameter("currency");
	String unit_rate_basic_amount = request.getParameter("unit_rate_basic_amount");
	String po_wt_tax = request.getParameter("po_wt_tax");
    String tax = request.getParameter("tax");    
    String tax_amnt = request.getParameter("tax_amnt");
    String total_po_value = request.getParameter("total_po_value");
    String billed_so_far_wt = request.getParameter("billed_so_far_wt");
    String pending_bill_wt = request.getParameter("pending_bill_wt");
	String write_off_wt = request.getParameter("write_off_wt");
	String c_fwd_value_wt = request.getParameter("c_fwd_value_wt");
	String status = request.getParameter("status");
	String conversion_rate = request.getParameter("conversion_rate");
	String po_value_wt_inr = request.getParameter("po_value_wt_inr");
	String billed_so_far_wt_inr = request.getParameter("billed_so_far_wt_inr");
	String write_off_wt_inr = request.getParameter("write_off_wt_inr");
	String c_fwd_value_wt_inr = request.getParameter("c_fwd_value_wt_inr");
	String remarks = request.getParameter("remarks");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into po_details values ('" + po_no + "','" + type + "','" + quarter + "','" + po_date + "','" + client_id + "','" + client_name + "','" + desc_of_service + "','" + currency + "','" + unit_rate_basic_amount + "','" + po_wt_tax + "','" + tax + "','" + tax_amnt + "','" + total_po_value + "','" + billed_so_far_wt + "','" + pending_bill_wt + "','" + write_off_wt + "','" + c_fwd_value_wt + "','" + status + "','" + conversion_rate + "','" + po_value_wt_inr + "','" + billed_so_far_wt_inr + "','" + write_off_wt_inr + "','" + c_fwd_value_wt_inr + "','" + remarks + "')");
    if (i > 0) {
        //session.setAttribute("emailid", user);
        response.sendRedirect("po_welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>