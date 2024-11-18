<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{


var na3=document.s.pname.value;
if(na3=="")

{
alert("Please Enter Product Name");
document.s.pname.focus();
return false;
}
else
{

}
var na4=document.s.pdesc.value;
if(na4=="")

{
alert("Please Write Product Description");
document.s.pdesc.focus();
return false;
}

var na5=document.s.puses.value;
if(na5=="")

{
alert("Please Write Product Uses");
document.s.puses.focus();
return false;
}

var dob=document.s.pman.value;
if(dob=="")

{
alert("Please Enter Product Manufacturer");
document.s.pman.focus();
return false;
}

var na9=document.s.pprice.value;
if(na9=="")

{
alert("Please Enter Product Price");
document.s.pprice.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style9 {font-family: "Times New Roman", Times, serif}
.style10 {
	font-size: 15px;
	color: #000000;
}
.style11 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
	color: #000000;
}
.style12 {color: #000000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="nav_menu">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="a_login.jsp">Admin</a></li>
          <li><a href="b_login.jsp">Bank</a></li>
          <li><a href="u_login.jsp">User</a></li>
          <li class="active"><a href="s_login.jsp">Service Provider</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html">Representing Fine Grained Co-Occurrences for Behavior Based Fraud Detection in Online Payment Services</a></h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center" class="style1">Add Products</h2>
		  
		  
	  
<form name="s" action="s_add_pro_ins.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
		  
            <span class="style12 style7 style9">
            <label for="name"> <br />
             <span class="style11">Product Name (required)<br />
             </span></label></span>
            <p class="style4 style9 style10"><input id="pname" name="pname" class="text" />
            </p>
			
          			  
                  <span class="style11 style9">
                  <label for="pdescription">Product Description<br />
                  </label>
                  </span>
                  <p class="style4 style9 style10">
                    <textarea name="pdesc" cols="50" id="pdesc"></textarea>
                  </p>
				  
				  <span class="style11 style9">
                  <label for="puses">Product Uses<br />
                  </label>
                  </span>
                  <p class="style4 style9 style10">
                    <textarea name="puses" cols="50" id="puses"></textarea>
                  </p>
				  
                  
				  
                  
				  
                  <span class="style7 style12 style16 style11 style9">
                  <label for="pincode">Product Manufacturer(required)<br />
                  </label>
                  </span>
                  <p class="style15 style9 style10">
                    <input id="pman" name="pman" class="text" />
                  </p>
				  
                  <span class="style7 style12 style16 style11 style9">
                  <label for="location">Product Price (required)<br />
                  </label>
                  </span>
                  <p class="style15 style9 style10">
                    <input id="pprice" name="pprice" class="text" />
                  </p>
				  
                  <span class="style7 style12 style16 style11 style9">
                  <label for="pic">Select Product Picture (required)</label>
                  </span>
                  <span class="style15 style9 style10">
                  <label for="pic"><br />
                  </label>
                  </span>
                  <p class="style11">
                    <input type="file" id="pic" name="pic" class="text" />
          </p>
                  <p class="style11">&nbsp;</p>
                  <p class="style11">
                    <input name="submit" type="submit" value="ADD PRODUCT" />
                  (Descripton will Get Encrypted)</p>
                  <p align="right" class="style11"><a href="s_main.jsp">Back</a></p>
</form>		  
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"> SP Menu</h2>
          <ul class="sb_menu">
			<li><a href="s_main.jsp">SP Main </a></li>
			<li><a href="s_login.jsp">Log Out</a></li>
          </ul>
        </div>
       
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>Image Gallery</h2>
       <a href="#"><img src="images/pix1.jpg" width="56" height="56" alt="" class="ad" /></a> <a href="#"><img src="images/pix2.jpg" width="56" height="56" alt="" class="ad" /></a>       <a href="#"><img src="images/pix3.jpg" width="56" height="56" alt="" class="ad" /></a> <a href="#"><img src="images/pix4.jpg" width="56" height="56" alt="" class="ad" /></a>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  
</html>
