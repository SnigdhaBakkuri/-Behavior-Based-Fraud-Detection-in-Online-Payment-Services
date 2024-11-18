<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Product</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style13 {
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
	font-size: 20px;
}
.style16 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
.style17 {color: #FF0000}
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
          <h2 align="center" class="style1">Purchase Product </h2>
		  <p>&nbsp;</p>
		  
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            
<%

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0,rk=0;
			int accno=0;
  			String s1,s2,s3,s4;
			String pname=request.getParameter("pname");
			int usid=Integer.parseInt(request.getParameter("usid"));
			
			String user=(String)application.getAttribute("user");
			
			Statement stmt = connection.createStatement();
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
								uamount=Integer.parseInt(rs.getString(8));				
																
								String sql2="SELECT pprice,rank FROM products where pname='"+pname+"' ";
								ResultSet rs2 =stmt.executeQuery(sql2);
								if(rs2.next()==true)
								{
								
								
										
										pprice=Integer.parseInt(rs2.getString(1));
										
										if(pprice>uamount)
										{
											

%>
   <span class="style13"> Insufficiant Amount !!! <br /> Still need <%= (pprice-uamount)%> </span> 
   
     <p><a href="u_add_money.jsp?type=<%="vgoodbad"%>">ADD AMOUNT</a></p>
	 <p align="right"><a href="u_purchased_pro_sta.jsp">Back </a></p>

<%

                                         }
										else
										{
												
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
												SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
												Date now = new Date();
												String strDate = sdfDate.format(now);
												String strTime = sdfTime.format(now);
												String dt = strDate + "   " + strTime;
												
												     String str="Purchased";
													 String query2 ="update Bank_req_res set upd_per='"+str+"' where id='"+usid+"' ";
													 Statement st1=connection.createStatement();
													 st1.executeUpdate (query2);
																									
												PreparedStatement ps1=connection.prepareStatement("insert into buy(pname,user,date,price) values(?,?,?,?)");
														ps1.setString(1,pname);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);
														
														
                                                     int x=ps1.executeUpdate();
													 if(x>0) {
													 
													 String task="Purchased";
													 String strQuery222 = "insert into transaction(user,pname,task,dt) values('"+user+"','"+pname+"','"+task+"','"+dt+"')";
													 connection.createStatement().executeUpdate(strQuery222);
													 
													     rk=Integer.parseInt(rs2.getString(2))+1;
													 
													 String strQuery2 = "update products set rank='"+rk+ "' where pname='"+ pname + "'";
												     connection.createStatement().executeUpdate(strQuery2);
					
					
																   
%>
     <p align="center" class="style16">You Have Successfully Brought this Product</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_purchased_pro_sta.jsp">Back </a></p><br />
<%
															 }
													
																
											}
								
						
									}
					
					}
					
					else
					{
%>
     <p align="center" class="style16 style17">Account Not Found. Please Create Account First.</p>
     <p><a href="u_purchased_pro_sta.jsp">Back </a></p><br />
	 <p><a href="u_main.jsp">User Main </a></p>
<%						
						
						
					}
									

					
		
		
		
		connection.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}

%>
		  
	  

		  
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
