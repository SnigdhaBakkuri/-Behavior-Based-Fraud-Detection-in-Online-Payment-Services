<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Service Provider Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style8 {color: #FF0000}
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
          <h2 align="center" class="style1">Welcome to Service Provider(SP) Main : <span class="style8"><%=application.getAttribute("sp")%></span></h2>
		  <p>&nbsp;</p>
		  <p align="right"><img src="images/Sp.png" width="460" height="265" /></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"> SP Menu</h2>
          <ul class="sb_menu">
			<li><a href="s_add_pro.jsp">Add Products </a></li>
			<li><a href="s_all_pro.jsp">View My Products </a></li>
			<li><a href="s_pro_pur_details.jsp">View All My Total Products Purchased Details </a></li>
			<li><a href="s_user_Bank_details.jsp">View User's Bank Transaction Behavior Verification details  </a></li>
			<li><a href="s_hold_pro_details.jsp">View All User's Hold(Due to Fraud Transaction)Details </a></li>
			<li><a href="s_rel_pro_details.jsp">View All User's Released on Purchased Products Details </a></li>
			
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
