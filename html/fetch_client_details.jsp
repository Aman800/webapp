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
<head>
<script src="jquery-1.11.2.js"></script>
<script src="//cdn.datatables.net/1.10.7/js/jquery.datatables.min.js"></script>
<script src="//cdn.datatables.net/tabletools/2.2.4/js/datatables.tabletools.min.js"></script>

<link rel="stylesheet"type="text/css" href="jquery.dataTables.min.css " />
<link rel="stylesheet"type="text/css" href="//cdn.datatables.net/tabletools/2.2.4/css/dataTables.tableTools.css" />
<link rel="stylesheet" type="text/css" href="/home/datat/private_releases/Editor-1.7.4/css/editor.bootstrap4.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.6/css/select.bootstrap4.min.css"/>

<script type="text/javascript">
$(document).ready(function (){
	var table= $('#datatable').datatable();
	var tableTools= new $.fn.dataTable.TableTools(table,{
		'sSwfPath':'//cdn.datatables.net/tabletools/2.2.4/swf/copy_csv_xls_pdf.swf'
		});
	$(tableTools.fnContainer()).insertBefore('#datatable_wrapper');

});

</script>

</head>
<body>

<h1>Retrieve Client Details from database</h1>
<table border="1" id="datatable">
<tr>
<td>client_id</td>
<td>client_name</td>
<td>location</td>
<td>address</td>
<td>contact_person</td>
<td>phone_no</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from client_details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("client_id") %></td>
<td><%=resultSet.getString("client_name") %></td>
<td><%=resultSet.getString("location") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact_person") %></td>
<td><%=resultSet.getString("phone_no") %></td>
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
<input type="submit" value="Download PDF" name="download" onclick="window.print()" /> 
</html>