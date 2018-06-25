<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("root");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "data";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve invoice Records from database</h1>
<table border="1">
<tr>
<td>invoice_no</td>
<td>invoice_type</td>
<td>customer_name</td>
<td>location</td>
<td>currency</td>
<td>invoice_value</td>
<td>conversion_value</td>
<td>inr_equiv_value</td>
<td>cgst</td>
<td>sgst</td>
<td>igst</td>
<td>cgst_value</td>
<td>sgst_value</td>
<td>igst_value</td>
<td>total_tax_value</td>
<td>total_invoice_value</td>
<td>po_no</td>
<td>cust_po_date</td>
<td>Quarter</td>
<td>invoice_date_ocd</td>
<td>service_completion_date</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from invoice_records";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("invoice_no") %></td>
<td><%=resultSet.getString("invoice_type") %></td>
<td><%=resultSet.getString("customer_name") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("currency") %></td>
<td><%=resultSet.getString("invoice_value") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>
<td><%=resultSet.getString("  ") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>