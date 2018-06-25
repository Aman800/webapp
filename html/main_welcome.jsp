<!DOCTYPE HTML>
<html>
<head>
  <title>Invoicing Application | Home</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <link rel="stylesheet" type="text/css" href="style/banner.css" />
  <!--  <link rel="stylesheet" type="text/css" href="style/table.css" /> -->
    <link rel="stylesheet" type="text/css" href="style/button.css" />
<style>
tr:hover {
    background-color: #555;
}
</style>
</head>

<body>


  <div id="main">
    <div id="header">
     <div id="logo1"></div>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the color of the text -->
          <h1><a href="index.jsp"> <img src="eralogo.png" height="50" width="250"></a></h1>
          <h2>erasmith technologies pvt.Ltd</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="main.jsp">Add Client</a></li>
          <li><a href="po.jsp">Purchase order</a></li>
			<li><a href="invoice.jsp">invoice</a></li>
			
        </ul>
      </div>
    </div>

<a href="http://localhost:8081/neww/index.html"> <button  class="buttonn button1" type="button" style="float: right;">Logout</button></a>

<!-- <img src="images/button.png" align="right" height="32" width="90"> -->

   <!-- <div id="content_header"></div>
<h2> WELCOME :  <%=session.getAttribute("UID") %> </h2> --> 
 <div id="site_content">		
	<div class="slideshow-container">
	
	<div style="text-align:center">


</div>


		</div>
		
	  <div id="sidebar_container" >
        <div class="sidebar">
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            
          </div>
        </div>

      </div>
      <div id="content">
  </div>
      <div id="content">       
      </div>
    </div>
    <center>
   <h1> Client Detail Added Sucessfully</h1>
	</center>
    <div id="content_footer"></div>
    <div id="footer">
     <p><a href="main.jsp">Add Client</a> | <a href="po.jsp">Purchage Order</a> | <a href="invoice.jsp">Invoice</a></p>
     <p>Copyright &copy; erasmith technologies pvt.Ltd</p>
    </div>
  </div>
</body>
</html>
