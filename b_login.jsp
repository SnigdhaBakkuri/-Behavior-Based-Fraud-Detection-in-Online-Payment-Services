<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bank Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {color: #0066FF}
.style2 {font-size: 15px}
.style3 {font-family: "Times New Roman", Times, serif}
.style4 {color: #FF00FF}
.style5 {font-size: 20px}
.style6 {color: #000000}
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
          <li class="active"><a href="b_login.jsp">Bank</a></li>
          <li><a href="u_login.jsp">User</a></li>
          <li><a href="s_login.jsp">Service Provider</a></li>
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
          <h2 align="center" class="style1">Bank Transaction Behavior Verifier(Bank) Login</h2>
		  <p><img src="images/ALogin.jpg" width="275" height="77" /></p>
		  
		  
<form name="s" action="b_authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
            
    <table align="center" border="0" width="51%" height="146">
      <tr>
        <td width="48%" height="25" bgcolor="#00FF00" class="style4 style2"><span class="style3 style5 style6"> Name </span></td>
        <td width="52%" height="25"><input type="text"  name="userid" size="15" /></td>
      </tr>
      <tr>
        <td width="48%" height="25" bgcolor="#00FF00" class="style5 style2"> <span class="style3 style5 style6">Pasword</span></td>
        <td width="52%" height="25"><input type="password"  name="pass" size="15" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2"><p align="center">
            <input type="submit"  value="Login" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </td>
      </tr>
    </table>
	
</form>		  
		  
		  
		  
		  
		  
		  
		  
		  
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="a_login.jsp">Admin</a></li>
            <li><a href="b_login.jsp">Bank</a></li>
            <li><a href="u_login.jsp">User</a></li>
            <li><a href="s_login.jsp">Service Provider</a></li>
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
