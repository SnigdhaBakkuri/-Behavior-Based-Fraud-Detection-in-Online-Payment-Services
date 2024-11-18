<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Account Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style14 {font-family: "Times New Roman", Times, serif}
.style15 {font-size: 15px}
.style16 {color: #FFFFFF}
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
          <li class="active"><a href="u_login.jsp">User</a></li>
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
          <h2 align="center" class="style1">View My Account</h2>
		  <p>&nbsp;</p>
		  
<table width="315" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                       
<%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>						
                        <%
						
						String user=(String )application.getAttribute("user");
						
						String i,s1,s2,s3,s4,s5,s6;
						int j=0;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								
								
								
								
					%>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(i);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>User Name </strong></div></td>
                          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(s1);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Location</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(s2);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td  width="145" height="40" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Email</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(s3);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                          <td align="left" valign="middle" height="51"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(s4);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Branch</strong></div></td>
                          <td align="left" valign="middle" height="51"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
                              <%out.println(s5);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td   width="145" height="51" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style3 style4 style7 style9 style21 style14 style15 style16" style="margin-left:20px;"><strong>Amount</strong></div></td>
                          <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                              <div align="left" class="style23 style9 style10" style="margin-left:20px;">
                                <%out.println(s6);%>
                            </div></td>
                        </tr>
						
						
                        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
  </table>          


		  
	  
<p align="right"><a href="u_account.jsp">Back</a></p>		  
  
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">User Menu</h2>
          <ul class="sb_menu">
            <li><a href="u_main.jsp">User Main</a></li>
			<li><a href="u_login.jsp">Log Out</a></li>
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
