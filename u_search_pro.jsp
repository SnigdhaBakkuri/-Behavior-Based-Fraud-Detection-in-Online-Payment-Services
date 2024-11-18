<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na1=document.s.keyword.value;
if (na1=="")
{
alert("Please Enter Keyword");
document.s.keyword.focus();
return false;
}

}      
</script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style11 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}
.style12 {
	font-family: "Times New Roman", Times, serif;
	font-size: 10px;
}
.style13 {font-size: 13px}
.style14 {color: #FFFFFF}
.style15 {color: #000000}
.style16 {font-size: 15px}
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
          <h2 align="center" class="style1">Search Product</h2>
		  <p>&nbsp;</p>
		  

<form name="s" action="u_search_pro.jsp" method="post" onSubmit="return valid()"  ons target="_top">   

                  <TABLE ALIGN="center" >
				  
                    <TR>
                      <TD width="174"><div align="center">
                        <div align="right">
                          <div align="center" class="style11 style15">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
					  
                      <TD width="152"><div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" VALUE="GO"/></TD>
                    </TR>
					
                    <TR>
					  <td></td>
                      <TD COLSPAN="3"><div class="style2"><span class="style13 style12 style15"><span class="style16">(Search is based on Product Content + Product Name)</span></span></div></TD>
                    </TR>
                  </TABLE>
                <P>&nbsp;</P>
</form>

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
								String s1="",keyword="",s2="",s3="",s4,s5="",s6="",s7,s8,s9,s10,s11,s12;
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
													
								String sql2="select * from products ";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql2);
								while(rs2.next())
										{
									
										   
										   s2 = rs2.getString(2).toLowerCase();//pname
										   s3 = rs2.getString(3);//desc
										   //s4 = rs2.getString(4);//uses
										   s5 = rs2.getString(5);//pman
										   s6 = rs2.getString(6);//price
										   s7 = rs2.getString(7);//author
										   s9 = rs2.getString(9);//rk
										   
										   
						                        String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValues3 = new String(Base64.decode(s3.getBytes())).toLowerCase();//desc
												
												
									   
					
							if ((s2.contains(keyword)) || (decryptedValues3.contains(keyword)) )  // searching on pname,desc
										{
										
										//int UpdateRank=Integer.parseInt(s9)+1;
										
										
										
									%>
									
                </P>
 </p>
         <table width="217" align="center">
              <tr>
		         <td width="100" bgcolor="#FF00FF"> <div align="left" class="style6 style5 style12 style13 style14"><span class="style4">Product Name  </span></div></td>
			     <td width="100"><span class="style15 style13"> :<%=s2%></span> </td>
              </tr>
			   
			   <tr>
		         <td width="100" bgcolor="#FF00FF"> <div align="left" class="style6 style5 style12 style13 style14"><span class="style4">Product Price  </span></div></td>
			     <td width="100"><span class="style15 style13"> :<%=s6%></span> </td>
			   </tr>
		</table>
                <p>
            <div align="center" class="style5 style14"><span class="style11">  <a href="u_search_pro1.jsp?pn=<%=s2%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	     
								
								
									   
									    }
							           }
						 
						
					}
					
					catch(Exception e)
					{						  
					    e.printStackTrace();
						//out.println(e.getMessage());
					}
%>






		  
	  
              <p align="right"><a href="u_main.jsp" class="style11">Back</a></p>		  
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
