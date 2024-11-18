<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>


<style type="text/css">
<!--
.style1 {color: #0066FF}
.style14 {color: #FFFFFF}
.style15 {font-family: "Times New Roman", Times, serif}
.style16 {font-size: 15px}
.style17 {color: #000000}
.style18 {font-size: 20px}
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
          <h2 align="center" class="style1"> Product Detail</h2>
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
    String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
	int i = 0, j = 0, k = 0;
    String pname=request.getParameter("pn");
	//String rk=request.getParameter("rank");
	String user=(String)application.getAttribute("user");

try
{
                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					String task="Searched";
					String strQuery222 = "insert into transaction(user,pname,task,dt) values('"+user+"','"+pname+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);
					
					String sql="select * from products where pname='"+pname+"' ";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					if(rs.next())
					{
										
                                                i = rs.getInt(1);
                                                s2 = rs.getString(2);
                                                s3 = rs.getString(3);//desc
                                                s4 = rs.getString(4);//uses
                                                s5 = rs.getString(5);//
                                                s6 = rs.getString(6);//
                                                s7 = rs.getString(7);//img
												s8 = rs.getString(8);//uploader
												s9 = rs.getString(9);//rk
				
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   
						                        String decrys3 = new String(Base64.decode(s3.getBytes()));
												
												
										
										
										
										%>
										
	<table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0">
										
		<tr>
		  <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong>Product Image</strong></div></td>
          <td width="116" rowspan="1" ><div class="style7" style="margin:10px 13px 10px 13px;">
		  <input  name="image" type="image" src="product_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong>Product Name</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong>Service Provider <br />(Product Uploader)</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <%out.println(s8);%>
          </div></td>
        </tr>
			
        <tr>
          <td  width="139" height="40"  valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong>Decription(Encrypted)</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <textarea name="text" cols="25" rows="7" readonly><%= decrys3 %></textarea>
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong>Uses</strong></div></td>
          <td  width="252" valign="middle" height="40"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <textarea name="textarea" cols="25" rows="7" readonly><%= s4 %></textarea>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong> Product Manufacturer</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong> Product Price</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <%out.println(s6);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong> Rank</strong></div></td>
          <td  width="252" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style6 style4 style16 style17" style="margin-left:20px;">
            <%out.println(s9);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style14 style20 style9 style4 style6 style5 style15 style16" style="margin-left:20px;"><strong> Ratings </strong></div></td>
          <td><span class="style8">
                <%
		int rank=Integer.parseInt(s9);
					 
    if(rank==3)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                <%
    }
    if(rank>3 && rank<=6)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                <%
    }
    if(rank>15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                <%
    }
    %>
              </span></td>
        </tr>
		
		<tr>
		  <td height="35"></td>
		  <td align="center" bgcolor="#00FFFF"><a href="u_purchase1.jsp?pn=<%=s2%>" class="style15 style17 style18">Purchase</a></td>
		</tr>
		
		</table>
					
					
					
<%

       }
	  
}
					
					catch(Exception e)
					{						  
						out.println(e.getMessage());
					}
					

%>






		  
	  
              <p align="right"><a href="u_search_pro.jsp">Back</a></p>		  
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
