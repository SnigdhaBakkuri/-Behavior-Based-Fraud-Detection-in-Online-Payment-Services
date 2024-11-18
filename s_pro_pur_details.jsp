<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchased Products Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>


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
.style13 {font-size: 18px}
.style14 {color: #FF0000}
.style15 {font-size: 15px}
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
          <h2 align="center" class="style1"> View All My Total Products Purchased Details</h2>
		  

<table width="615" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr bgcolor="#00FF33">
                      <td width="62" height="44" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Id  </div></td>
					  <td width="171" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Purchased User</div></td>
					  <td width="171" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Product Name  </div></td>
					  <td width="194" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Purchased  Date </div></td>
                      <td width="206" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Product Price </div></td>
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,bill=0;

 try 
	{		
		   String user=(String)application.getAttribute("sp");
		   
		   String query="select * from buy "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//pn
		s3=rs.getString(3);//user
		s4=rs.getString(4);//dt
		s5=rs.getString(5);//price
		
		   String query2="select uploader from products where pname='"+s2+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
	       if ( rs2.next() )
		   {  
		      s6=rs2.getString(1);//user
			  if(s6.equalsIgnoreCase(user))
			  {
		
		
		%>
                    
                    <tr>
                      <td height="52"><div align="center" class="style9 style11 style12 style15"><%= j%></div></td>
                      <td><div align="center" class="style9 style11 style12 style15"><%=s3%></div></td>
					  <td><div align="center" class="style9 style11 style12 style15"><%=s2%></div></td>
					  <td><div align="center" class="style9 style11 style12 style15"><%=s4%></div></td>
					  <td><div align="center" class="style9 style11 style12 style15"><%=s5%></div></td>
                    </tr>
					
					
        <%
			int b=Integer.parseInt(s5);
		    bill=bill+b;							 
			 
	  j=j+1;}}}
	  
	  
	     %>
		 
		           <tr>
                      <td height="51" align="center">---</td>
                      <td height="51" align="center">-----</td>
					  <td height="51" align="center">-----</td>
				      <td bgcolor="#00FFFF"><div align="center" class="style14 style13 style11 style9"><strong>Total Bill :</strong></div></td>
				      <td bgcolor="#00FFFF"><div align="center" class="style14 style13 style11 style9"><strong><%=bill%></strong></div></td>
          </tr>
		 </table>
		 <%
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		  

<p>&nbsp;</p>
<p align="right" class="style11"><a href="s_main.jsp">Back</a></p>		  
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
