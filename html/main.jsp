<!DOCTYPE HTML>
<html>
<head>
  <title>Invoicing Application | Home</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <link rel="stylesheet" type="text/css" href="style/banner.css" />
  <!--  <link rel="stylesheet" type="text/css" href="style/table.css" /> -->
    <link rel="stylesheet" type="text/css" href="style/button.css" />
</head>

<body>


  <div id="main">
    <div id="header">   
     <div id="logo1" ><a href="index.jsp"> <img src="eralogo.png" height="50" width="250"></a><a href="index.html"> 
         <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="main.jsp">New Client</a></li>
          <li><a href="po.jsp">Purchase order</a></li>
			<li><a href="invoice.jsp">invoice</a></li>
			<li><a href="index.html">Logout</a></li>
     <!-- <button  class="buttonn button1" type="button" style="float: right;">Logout</button></a> -->
     </div>
      <div id="logo">
        <div id="logo_text">
 
          <!-- class="logo_colour", allows you to change the color of the text -->
        </div>
      </div>
      <div id="menubar">
			
        </ul>
      </div>
    </div>



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
    <center><div class="wrap-client100">
<form action="main1.jsp" method ="post"  name="client_form" onsubmit="return validation_client()" > <!-- code updated -->
<table background="body.png" cellpadding="" width="50%" border="2" align="center"cellspacing="4">


<tr>
<td colspan=2 height="70">
<center><font size=4>  Client Details</b></font></center>
</td>
</tr>
<tr>
<td> Client Id</b></td>
<td ><input style = height:22px; font-size:10pt; type="text" name="client_id" id="client_id" size="30"></td>
</tr>

<tr>
<td> Client Name</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="client_name" id="client_name" size="30"></td>
</tr>
<tr>
<td> Location</b></td>
<td><input  style = height:22px; font-size:10pt; type="text" name="location" id="location" size="30"></td>
</tr>

<tr>
<td> Contact Person</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="contact_person" id="contact_person" size="30"></td>
</tr>
<tr>
<td  height="30"> Address</b></td>
<td  height="30" ><textarea rows="4" cols="32" name="address" id="address">  
   Write discription here.  </textarea> </td>
</tr>
<tr>
<td> Phone No</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="phone_no" id="phone_no" size="30" height="30"></td>
</tr>
<tr>
<td> City</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="city" id="city" size="30" height="30"></td>
</tr>
<tr>
<td> state</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="state" id="state" size="30" height="30"></td>
</tr>
<tr>
<td> PinCode</b></td>
<td><input style = height:22px; font-size:10pt; type="text" name="pincode" id="pincode" size="30" height="30"></td>
</tr>
<tr>
<td> Email Id</b></td>
<td><input style = height:22px; font-size:10pt; type="text"  name="emailid" id="emailid" size="30" height="30"  ></td>
</tr>
<tr>
<td> GSTIN</b></td>
<td><input style = height:22px; font-size:10pt; type="text"  name="gstin" id="gstin" size="30" height="30"  ></td>
</tr>

<tr>
<td><input class="button button1" type="reset"></td>
<td colspan="2"><input class="button button1" type="submit" value="Submit Form" />
</tr>
</table>
    		</form></div>
	</center>
    <div id="content_footer"></div>
    <div id="footer">
     <p><a href="main.jsp">Add Client</a> | <a href="po.jsp">Purchage Order</a> | <a href="invoice.jsp">Invoice</a></p>
     <p>Copyright &copy; erasmith technologies pvt.Ltd</p>
    </div>
  </div>
  
  <!-- code updated start-->

<script>
function validation_client()                                   
{
    var cname = document.forms["client_form"]["client_name"];              
    var email = document.forms["client_form"]["emailid"];   
    var phone = document.forms["client_form"]["phone_no"]; 
    var pin =  document.forms["client_form"]["pincode"]; 
    var stat = document.forms["client_form"]["state"]; 
    var add = document.forms["client_form"]["address"]; 
    var citi = document.forms["client_form"]["city"];              
    var loc = document.forms["client_form"]["location"];   
    var cid = document.forms["client_form"]["client_id"]; 
    var contactperson =  document.forms["client_form"]["contact_person"];
    
    if (cid.value=="")                       
    {
        window.alert("Please enter client Id");
        cid.focus();
        return false;
    }
    if (cname.value=="") 
    {
        window.alert("Please enter client name");
        cname.focus();
        return false;
    }
    if (loc.value=="") 
    {
        window.alert("Please enter location");
        loc.focus();
        return false;
    }
    if (contactperson.value=="") 
    {
        window.alert("Please enter contact person");
        contactperson.focus();
        return false;
    }
    if (add.value=="") 
    {
        window.alert("Please enter address");
        add.focus();
        return false;
    }
    if (phone.value=="") 
    {
        window.alert("Please enter phone number");
        phone.focus();
        return false;
    }
    if (citi.value=="") 
    {
        window.alert("Please enter city");
        citi.focus();
        return false;
    }
    if (stat.value=="") 
    {
        window.alert("Please enter state");
        stat.focus();
        return false;
    }
    if (pin.value=="") 
    {
        window.alert("Please enter zip code");
        pin.focus();
        return false;
    }
    if (email.value=="") 
    {
        window.alert("Please enter email Id");
        email.focus();
        return false;
    }
   return true;
}
</script>
<style>
validation_client {                                        
    margin-left: 70px;
    font-weight: bold ;
    float: left;
    clear: left;
    width: 100px;
    text-align: left;
    margin-right: 10px;
    font-family:sans-serif,bold, Arial, Helvetica;
    font-size:14px;
}
  
</style>  
  
<!-- code updated end-->
  
  
</body>
</html>
