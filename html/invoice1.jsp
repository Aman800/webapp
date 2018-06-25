
<%@ page import ="java.sql.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.SQLException" %>
<%
    String invoice_no = request.getParameter("invoice_no");    
    String invoice_type = request.getParameter("invoice_type");
    String customer_name = request.getParameter("customer_name");
    String location = request.getParameter("location");
    String currency = request.getParameter("currency");
    String invoice_value = request.getParameter("invoice_value");
    String conversion_value = request.getParameter("conversion_value");
    String inr_equiv_value = request.getParameter("inr_equiv_value");
    String cgst = request.getParameter("cgst");
    String sgst = request.getParameter("sgst");
    String igst = request.getParameter("igst");
    String cgst_value = request.getParameter("cgst_value");
    String sgst_value = request.getParameter("sgst_value");
    String igst_value = request.getParameter("igst_value");
    String total_tax_value = request.getParameter("total_tax_value");
    String total_invoice_value = request.getParameter("total_invoice_value");
    String po_no = request.getParameter("po_no");
    String cust_po_date = request.getParameter("cust_po_date");
    String Quarter = request.getParameter("Quarter");
    String invoice_date_ocd = request.getParameter("invoice_date_ocd");
    String service_completion_date = request.getParameter("service_completion_date");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into invoice_records values ('" + invoice_no + "','" + invoice_type + "','" + customer_name + "','" + location + "','" + currency + "','" + invoice_value + "','" + conversion_value + "','" + inr_equiv_value + "','" + cgst + "','" + sgst + "','" + igst + "','" + cgst_value + "','" + sgst_value + "','" + igst_value + "','" + total_tax_value + "','" + total_invoice_value + "','" + po_no + "','" + cust_po_date + "','" + Quarter + "','" + invoice_date_ocd + "','" + service_completion_date + "')");
    if (i > 0) {
        //session.setAttribute("emailid", user);
        response.sendRedirect("invoice_welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>