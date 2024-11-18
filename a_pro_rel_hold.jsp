<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Release and Hold Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style8 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}
.style10 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #FF0000;
}
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
          <li class="active"><a href="a_login.jsp">Admin</a></li>
          <li><a href="b_login.jsp">Bank</a></li>
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
          <h2 align="center" class="style1">View No. Of Released, Hold and Purchased(Released) Products</h2>
		  <p>&nbsp;</p>
		  
<%@ include file="connect.jsp"%>

<%
try
{
	 //String query="select upd_per from Bank_req_res LIMIT 2 ";
	 String query="select distinct upd_per from Bank_req_res where upd_per='Approved' || upd_per='Rejected' || upd_per='Purchased' "; 
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
	 if(rs.next())
	 {
					
%>		  
		  
		  <p align="left"><iframe src="graph3.jsp" style="border:3px;" width="800" height="400"> </iframe></p>
		  
<%
     }
	 else
	 {
	  %> 
<p align="center" class="style10">No Product Purchase Verified or No Product Purchase Requested</p>
<%
	 }
	 
}
catch(Exception e)
{
e.printStackTrace();
}					
%>		  
		  
		  
		  
		  
		  
          <p align="right"><a href="a_main.jsp" class="style8">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Admin Menu</h2>
          <ul class="sb_menu">
            <li><a href="a_main.jsp">Admin Main </a></li>
            <li><a href="a_login.jsp">Log Out</a></li>
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
