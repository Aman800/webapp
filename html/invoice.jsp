<!DOCTYPE HTML>
<html>
<head>
  <title>Invoicing Application | Home</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <link rel="stylesheet" type="text/css" href="style/banner.css" />
  <link rel="stylesheet" type="text/css" href="style/button.css" />
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>

<body>


  <div id="main">
    <div id="header">   
     <div id="logo1" ><a href="index.jsp"> <img src="eralogo.png" height="50" width="250"></a><a href="index.html"> 
         <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li ><a href="main.jsp">New Client</a></li>
          <li><a href="po.jsp">Purchase order</a></li>
			<li class="selected"><a href="invoice.jsp">invoice</a></li>
			<li><a href="index.html">Logout</a></li>
     <!-- <button  class="buttonn button1" type="button" style="float: right;">Logout</button></a> -->
     </div>
      <div id="menubar">
			
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
<!-- <a href="http://localhost:8081/neww/index.html"><img src="images/button.png" align="right" height="52" width="152"></a>-->
  <div id="site_content">		
	<div class="slideshow-container">
	
	<div style="text-align:center">


</div>
</div>

      <div id="content">
       
  </div>
  
  
  
  
      <div id="content">

              
      </div>
    </div><div class="messageError">
        <center>
<form action="invoice1.jsp" method ="post" name="myform" onsubmit="return validateform()" id="form1" >
<table background="body.png" cellpadding="" width="70%" border="2" align="center"cellspacing="4">


<tr>
<td colspan=4 height="50" style="color:white;">
<center><font size=4><b>Invoice Detail</b></font></center>
</td>
</tr>
<tr>
<td>Invoice No.</td>
<td ><input style = height:22px; type="text" name="invoice_no"  size="30"></td>
<td>Invoice Type</td>
<td><input style = height:22px;  type="text" name="invoice_type" size="30"></td>
</tr>

<tr>
<td>Customer Name</td>
<td><input style = height:22px; font-size:10pt; type="text" name="customer_name" size="30"></td>
<td>Location</td>
<td><input style = height:22px; font-size:10pt; type="text" name="location" id="location" size="30" onkeyup="Calculate3();"></td>
</tr>
<tr>
<td>Currency</td>
<td><input style = height:22px; font-size:10pt; type="text" name="currency" size="30"></td>
<td>Invoice Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="invoice_value" class="invoice_value" id="invoice_value" size="30"></td>
</tr>

<tr>
<td>Conversion Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="conversion_value" id="conversion_value" size="30" onkeyup="Calculate2();"></td>

<td>INR Equiv Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="inr_equiv_value" id="inr_equiv_value" size="30"></td>
</tr>
<tr>
<td>CGST</td>
<td><input style = height:22px; font-size:10pt; type="text" name="cgst" id="cgst" size="30"></td>
<td>SGST</td>
<td><input style = height:22px; font-size:10pt; type="text" name="sgst" id="sgst" size="30"></td>
</tr>
<tr>
<td>IGST</td>
<td><input style = height:22px; font-size:10pt; type="text" name="igst" id="igst" size="30" onkeyup="Calculate4();"></td>
<td>CGST Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="cgst_value" id="cgst_value" size="30"></td>
</tr>
<tr>
<td>SGST Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="sgst_value" id="sgst_value" size="30"></td>
<td>IGST Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="igst_value" id="igst_value"  size="30" onkeyup="Calculate();"></td>
</tr>
<tr>
<td>total_tax_value</td>
<td><input style = height:22px; font-size:10pt;  type="text" name="total_tax_value" size="30" id="total_tax_value" onkeyup="Calculate5();"></td>
<td>Total Invoice Value</td>
<td><input style = height:22px; font-size:10pt; type="text" name="total_invoice_value" id="total_invoice_value" size="30" disabled></td>
</tr>
<tr>
<td>P.O No</td>
<td><input style = height:22px; type="text" name="po_no" size="30"></td>
<td>Cust PO Date</td>
<td><input type=date  style = height:22px; name="cust_po_date" size="15" autocomplete="off"></td>
</tr>
<tr>
<td>Quarter</td>
<td><input style = height:22px; type="text" name="Quarter" size="30"></td>
<td>Invoice Date</td>
<td><input type=date style = height:22px; name="invoice_date_ocd" size="15" id="invoice_date_ocd" autocomplete="off" onchange="Calculate6();"></td>
</tr>
<tr>
<td>Service Completion Date</td>
<td><input type=text style = height:22px; name="service_completion_date" size="15" id="service_completion_date" autocomplete="off" disabled></td>



</tr>

<tr>
<td></td>
<td colspan="2"><input class="button button1" type="reset"></td>
<td  colspan="2"><input  class="button button1" type="submit" value="Submit Form" /></td>
</tr>
</table>
</form>
	</center></div>
    <div id="content_footer"></div>
    <div id="footer">
     <p><a href="main.jsp">Add Client</a> | <a href="po.jsp">Purchage Order</a> | <a href="invoice.jsp">Invoice</a></p>
      <p>Copyright &copy; erasmith technologies pvt.Ltd</p>
    </div>
  </div>
  
  <!-- code updated start-->

  <script type="text/javascript">

function validateform()                                   
{
    var invoice_no = document.forms["myform"]["invoice_no"];              
    var type = document.forms["myform"]["invoice_type"];   
    var customer_name = document.forms["myform"]["customer_name"]; 
    var location =  document.forms["myform"]["location"]; 
    var currency = document.forms["myform"]["currency"]; 
    var invoice_value = document.forms["myform"]["invoice_value"]; 
    var conversion_value = document.forms["myform"]["conversion_value"];              
    var currency = document.forms["myform"]["currency"];   
    var inr_equiv_value = document.forms["myform"]["inr_equiv_value"]; 
    var cgst =  document.forms["myform"]["cgst"];
    var sgst = document.forms["myform"]["sgst"]; 
    var igst = document.forms["myform"]["igst"];              
    var cgst_value = document.forms["myform"]["cgst_value"];   
    var sgst_value = document.forms["myform"]["sgst_value"]; 
    var igst_value =  document.forms["myform"]["igst_value"];              
    var total_tax_value = document.forms["myform"]["total_tax_value"];   
    var total_invoice_value = document.forms["myform"]["total_invoice_value"]; 
    var po_no =  document.forms["myform"]["po_no"];              
    var cust_po_date = document.forms["myform"]["cust_po_date"];   
    var Quarter = document.forms["myform"]["Quarter"]; 
    var invoice_date_ocd =  document.forms["myform"]["invoice_date_ocd"]; 
    var service_completion_date =  document.forms["myform"]["service_completion_date"];
    
    
    if (invoice_no.value=="")                       
    {
        window.alert("Please enter invoice number");
        invoice_no.focus();
        return false;
    }
    
    if (type.value=="")                       
    {
        window.alert("Please enter invoice type");
        invoice_type.focus();
        return false;
    }
    if (customer_name.value=="")                       
    {
        window.alert("Please enter client name");
        customer_name.focus();
        return false;
    }
    
    if (location.value=="")                       
    {
        window.alert("Please enter location");
        location.focus();
        return false;
    }
    if (currency.value=="")                       
    {
        window.alert("Please enter currency");
        currency.focus();
        return false;
    }
    
    if (conversion_value.value=="")                       
    {
        window.alert("Please enter conversion value");
        conversion_value.focus();
        return false;
    }if (inr_equiv_value.value=="")                       
    {
        window.alert("Please enter amount INR");
        inr_equiv_value.focus();
        return false;
    }
    
    if (cgst.value=="")                       
    {
        window.alert("Please enter cgst%");
        cgst.focus();
        return false;
    }
    if (sgst.value=="")                       
    {
        window.alert("Please enter sgst%");
        sgst.focus();
        return false;
    }
    
    if (igst.value=="")                       
    {
        window.alert("Please enter igst%");
        igst.focus();
        return false;
    }if (cgst_value.value=="")                       
    {
        window.alert("Please enter cgst value");
        cgst_value.focus();
        return false;
    }
    
    if (sgst_value.value=="")                       
    {
        window.alert("Please enter sgst value");
        sgst_value.focus();
        return false;
    }
    if (igst_value.value=="")                       
    {
        window.alert("Please enter igst value");
        igst_value.focus();
        return false;
    }
    
    if (total_tax_value.value=="")                       
    {
        window.alert("Please enter total tax value");
        total_tax_value.focus();
        return false;
    }if (total_invoice_value.value=="")                       
    {
        window.alert("Please enter total invoice value");
        total_invoice_value.focus();
        return false;
    }
    
    if (po_no.value=="")                       
    {
        window.alert("Please enter P.O. number");
        po_no.focus();
        return false;
    }
    
    if (Quarter.value=="")                       
    {
        window.alert("Please enter quarter");
        Quarter.focus();
        return false;
    }
    
    
    if (write_off_wt_inr.value=="")                       
    {
        window.alert("Please enter write-off without tax INR");
        write_off_wt_inr.focus();
        return false;
    }
    if (remarks.value=="")                       
    {
        window.alert("Please enter write-off without tax INR");
        remarks.focus();
        return false;
    }
    return true;
}


function Calculate()
{
  var c= document.getElementById('cgst_value').value;
  var s= document.getElementById('sgst_value').value; 
  var i= document.getElementById('igst_value').value; 
 
  document.getElementById('total_tax_value').value=parseFloat(c) + parseFloat(s) + parseFloat(i);
  document.form1.keyup();
}
function Calculate2()
{
  var inv_val= document.getElementById('invoice_value').value;
  var con_val= document.getElementById('conversion_value').value;
 
  document.getElementById('inr_equiv_value').value=parseFloat(inv_val) * parseFloat(con_val);
  document.form1.keyup();
}
function Calculate3()
{
  var locate_state= document.getElementById("location").value;
  var local="Delhi";
  var zero=0;
  var nine=9;
  var eighteen=18;
  var n=locate_state.localeCompare(local);
  if (n!=0) {
	  document.getElementById('cgst').value=parseFloat(nine);
	  document.getElementById('sgst').value=parseFloat(nine);
		document.getElementById('igst').value=parseFloat(zero);
	  document.form1.keyup();
	} else {
		document.getElementById('cgst').value=parseFloat(zero);
		document.getElementById('sgst').value=parseFloat(zero);
		document.getElementById('igst').value=parseFloat(eighteen);
		document.form1.keyup();
	}
 
  
}
function Calculate4()
{
  var c_gst= document.getElementById('cgst').value;
  var s_gst= document.getElementById('sgst').value;
  var i_gst= document.getElementById('igst').value;
  var inr_value= document.getElementById('inr_equiv_value').value;
    
 
  document.getElementById('cgst_value').value=(parseFloat(c_gst)/100) * parseFloat(inr_value);
  document.getElementById('sgst_value').value=(parseFloat(s_gst)/100) * parseFloat(inr_value);
  document.getElementById('igst_value').value=(parseFloat(i_gst)/100) * parseFloat(inr_value);
  document.form1.keyup();
}
function Calculate5()
{
  var totaltaxval= document.getElementById('total_tax_value').value;
  var inr_valuee= document.getElementById('inr_equiv_value').value;
    
 
  document.getElementById('total_invoice_value').value=(parseFloat(totaltaxval) + parseFloat(inr_valuee));
  document.form1.keyup();
}
function Calculate6()
{
  var ocd= document.getElementById('invoice_date_ocd').value;
    
  var date = new Date(ocd);
  var newdate = new Date(date);

  newdate.setDate(newdate.getDate() + 60);
  
  var dd = newdate.getDate();
  var mm = newdate.getMonth() + 1;
  var y = newdate.getFullYear();

  var someFormattedDate = mm + '/' + dd + '/' + y;
  document.getElementById('service_completion_date').value = someFormattedDate;
  document.form1.keyup();
}

</script>
		
<style>
validateform{                                        
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
