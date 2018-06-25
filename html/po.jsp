<!DOCTYPE HTML>
<html>
<head>
  <title>Invoicing Application | Home</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <link rel="stylesheet" type="text/css" href="style/banner.css" />
    <!-- <link rel="stylesheet" type="text/css" href="style/tablepo.css" /> -->
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
          <li><a href="main.jsp">New Client</a></li>
          <li  class="selected"><a href="po.jsp">Purchase order</a></li>
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
    <div id="content_header"></div>
	<!-- <a href="http://localhost:8081/neww/index.html"><img src="images/button.png" align="right" height="32" width="90"></a> -->
 <div id="site_content">		
	<div class="slideshow-container">
	
	<div style="text-align:center">


</div>


		</div>
		
	  <div id="sidebar_container">
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

<form action="po1.jsp" method ="post" name="poform" onsubmit="return validation_po();">
<table background="body.png" cellpadding="" width="70%" border="2" align="center"cellspacing="4">


<tr>
<td colspan=4 height="50"  style="color:white;">
<center><font size=4><b>Purchase Order</b></font></center>
</td>
</tr>
<tr>
<td>P.O No.</td>
<td ><input  style = height:22px; type="text" name="po_no"  size="30"></td>
<td>P.O Type</td>
<td><input  style = height:22px;  type="text" name="type" size="30"></td>
</tr>

<tr>
<td>Quarter</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="quarter" size="30"></td>
<td>PO Date</td>
<td><input type="text" id="datepicker" style = height:22px; name="po_date" size="15" autocomplete="off"></td>
</tr>
<tr>
<td>Client Id</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="client_id" size="30"></td>
<td>Client Name</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="client_name" size="30"></td>
</tr>

<tr>
<td  height="30">Description</td>
<td  height="30" ><textarea name="desc_of_service" rows="4" cols="32">  
   Write discription here.  </textarea> 
</td>
<td>Currency</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="currency" size="30"></td>
</tr>
<tr>
<td>Basic Amount</td>
<td><input  style = height:22px; font-size:10pt; type="text" class="unit_rate_basic_amount" name="unit_rate_basic_amount" id="unit_rate_basic_amount" size="30" onkeyup="Calculate();"></td>
<td>P.O. Wt Tax</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="po_wt_tax" id="po_wt_tax" size="30"></td>
</tr>
<tr>
<td>TAX %</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="tax" id="tax" size="30" onkeyup="Calculate1()"></td>
<td>TAX Amount</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="tax_amnt" id="tax_amnt" size="30" onkeyup="Calculate2();"></td>
</tr>
<tr>
<td>Total Po Value</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="total_po_value" id="total_po_value" size="30"></td>
<td>Billed So far</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="billed_so_far_wt" id="billed_so_far_wt" size="30" onkeyup="Calculate3();"></td>
</tr>
<tr>
<td>Pending Amount</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="pending_bill_wt" id="pending_bill_wt" size="30"></td>
<td>Write Off</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="write_off_wt" id="write_off_wt" size="30" onkeyup="Calculate5();"></td>
</tr>
<tr>
<td>Cust. Forward Value</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="c_fwd_value_wt" id="c_fwd_value_wt" size="30"></td>
<td>Status</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="status" size="30"></td>
</tr>
<tr>
<td>Conversion Rate</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="conversion_rate" id="conversion_rate" size="30" onkeyup="Calculate4();"></td>
<td>PO Value INR</td>
<td><input  style = height:22px; font-size:10pt; type="text" name="po_value_wt_inr" id="po_value_wt_inr"  size="30"></td>
</tr>
<tr>
<td>Billed so far INR</td>
<td><input  style = height:22px; type="text" name="billed_so_far_wt_inr" id="billed_so_far_wt_inr" size="30"></td>
<td>Write Off INR</td>
<td><input  style = height:22px;  type="text" name="write_off_wt_inr" id="write_off_wt_inr" size="30"></td>
</tr>
<tr>
<td>C Forward Value INR</td>
<td><input  style = height:22px; type="text" name="c_fwd_value_wt_inr" id="c_fwd_value_wt_inr" size="30"></td>
<td>Remark</td>
<td  height="30" ><textarea name="remarks" rows="3" cols="32">  
   Write Remark here.  </textarea> 
</tr>

<tr>
<td colspan="2"><input align="center"  class="button button1" type="reset"  ></td>
<td  colspan="2"><input class="button button1" type="submit" value="Submit"  align="center" ></td>
</tr>
</table>
    		</form>
	</center>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="main.jsp">Add Client</a> | <a href="po.jsp">Purchage Order</a> | <a href="invoice.jsp">Invoice</a></p>
      <p>Copyright &copy; erasmith technologies pvt.Ltd</p>
    </div>
  </div>
  <!-- code updated start-->


<script type="text/javascript">
function validation_po()                                   
{
    var po_no = document.forms["poform"]["po_no"];              
    var type = document.forms["poform"]["type"];   
    var quarter = document.forms["poform"]["quarter"]; 
    var po_date =  document.forms["poform"]["po_date"]; 
    var client_id = document.forms["poform"]["client_id"]; 
    var client_name = document.forms["poform"]["client_name"]; 
    var desc_of_service = document.forms["poform"]["desc_of_service"];              
    var currency = document.forms["poform"]["currency"];   
    var unit_rate_basic_amount = document.forms["poform"]["unit_rate_basic_amount"]; 
    var po_wt_tax =  document.forms["poform"]["po_wt_tax"];
    var tax = document.forms["poform"]["tax"]; 
    var tax_amnt = document.forms["poform"]["tax_amnt"];              
    var total_po_value = document.forms["poform"]["total_po_value"];   
    var billed_so_far_wt = document.forms["poform"]["billed_so_far_wt"]; 
    var write_off_wt =  document.forms["poform"]["write_off_wt"];              
    var c_fwd_value_wt = document.forms["poform"]["c_fwd_value_wt"];   
    var status = document.forms["poform"]["status"]; 
    var conversion_rate =  document.forms["poform"]["conversion_rate"];              
    var po_value_wt_inr = document.forms["poform"]["po_value_wt_inr"];   
    var billed_so_far_wt_inr = document.forms["poform"]["billed_so_far_wt_inr"]; 
    var write_off_wt_inr =  document.forms["poform"]["write_off_wt_inr"]; 
    var remarks =  document.forms["poform"]["remarks"];
    
    
    if (po_no.value=="")                       
    {
        window.alert("Please enter P.O number");
        po_no.focus();
        return false;
    }
    
    if (type.value=="")                       
    {
        window.alert("Please enter P.O. type");
        type.focus();
        return false;
    }if (quarter.value=="")                       
    {
        window.alert("Please enter quarter");
        quarter.focus();
        return false;
    }
    

    if (client_id.value=="")                       
    {
        window.alert("Please enter client Id");
        client_id.focus();
        return false;
    }
    
    if (client_name.value=="")                       
    {
        window.alert("Please enter client name");
        client_name.focus();
        return false;
    }if (desc_of_service.value=="")                       
    {
        window.alert("Please enter service description");
        desc_of_service.focus();
        return false;
    }
    
    if (currency.value=="")                       
    {
        window.alert("Please enter currency");
        currency.focus();
        return false;
    }
    if (unit_rate_basic_amount.value=="")                       
    {
        window.alert("Please enter Unit rate");
        unit_rate_basic_amount.focus();
        return false;
    }
    
    if (po_wt_tax.value=="")                       
    {
        window.alert("Please enter P.O. value without tax");
        po_wt_tax.focus();
        return false;
    }if (tax.value=="")                       
    {
        window.alert("Please enter tax%");
        tax.focus();
        return false;
    }
    
    if (tax_amnt.value=="")                       
    {
        window.alert("Please enter taxable value");
        tax_amnt.focus();
        return false;
    }
    if (total_po_value.value=="")                       
    {
        window.alert("Please enter total value");
        total_po_value.focus();
        return false;
    }
    
    if (billed_so_far_wt.value=="")                       
    {
        window.alert("Please enter billed amount without tax");
        billed_so_far_wt.focus();
        return false;
    }if (write_off_wt.value=="")                       
    {
        window.alert("Please enter write-off without tax");
        write_off_wt.focus();
        return false;
    }
    
    if (c_fwd_value_wt.value=="")                       
    {
        window.alert("Please enter customer forwarded amount");
        c_fwd_value_wt.focus();
        return false;
    }if (status.value=="")                       
    {
        window.alert("Please enter P.O. status");
        status.focus();
        return false;
    }
    
    if (conversion_rate.value=="")                       
    {
        window.alert("Please enter conversion rate");
        conversion_rate.focus();
        return false;
    }if (po_value_wt_inr.value=="")                       
    {
        window.alert("Please enter P.O. value without tax INR");
        po_value_wt_inr.focus();
        return false;
    }
    
    if (billed_so_far_wt_inr.value=="")                       
    {
        window.alert("Please enter billed amount without tax INR");
        billed_so_far_wt_inr.focus();
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
  var basic_amnt= document.getElementById('unit_rate_basic_amount').value;
 
  document.getElementById('po_wt_tax').value=parseFloat(basic_amnt);
  document.form1.keyup();
}
function Calculate1()
{
  var taxpercent= document.getElementById('tax').value;
  var basic_amnt= document.getElementById('unit_rate_basic_amount').value;
  
  document.getElementById('tax_amnt').value=((parseFloat(taxpercent)/100) * parseFloat(basic_amnt));
  document.form1.keyup();
}
function Calculate2()
{
  var basicpoVal= document.getElementById('po_wt_tax').value;
  var taxamnt= document.getElementById('tax_amnt').value;
  
  document.getElementById('total_po_value').value=(parseFloat(basicpoVal) + parseFloat(taxamnt));
  document.form1.keyup();
}

function Calculate3()
{
  var billedWT= document.getElementById('billed_so_far_wt').value;
  var poValWT= document.getElementById('po_wt_tax').value;
  
  document.getElementById('pending_bill_wt').value=(parseFloat(poValWT) - parseFloat(billedWT));
  document.form1.keyup();
}
function Calculate4()
{
  var conver_rate= document.getElementById('conversion_rate').value;
  var poValWT= document.getElementById('po_wt_tax').value;
  var billedValWT= document.getElementById('billed_so_far_wt').value;
  var woffValWT= document.getElementById('write_off_wt').value;
  var custFwdValWT= document.getElementById('c_fwd_value_wt').value;
     
  document.getElementById('po_value_wt_inr').value=(parseFloat(conver_rate) * parseFloat(poValWT));
  document.getElementById('billed_so_far_wt_inr').value=(parseFloat(conver_rate) * parseFloat(billedValWT));
  document.getElementById('write_off_wt_inr').value=(parseFloat(conver_rate) * parseFloat(woffValWT));
  document.getElementById('c_fwd_value_wt_inr').value=(parseFloat(conver_rate) * parseFloat(custFwdValWT));
  document.form1.keyup();
}
function Calculate5()
{
  var woffValWT= document.getElementById('write_off_wt').value;
  var poValWT= document.getElementById('po_wt_tax').value;
  
  document.getElementById('c_fwd_value_wt').value=(parseFloat(poValWT) - parseFloat(woffValWT));
  document.form1.keyup();
}
</script>
<style>
validation_po{                                        
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
