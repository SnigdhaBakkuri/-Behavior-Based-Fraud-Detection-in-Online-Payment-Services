<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style9 {font-family: "Times New Roman", Times, serif}
.style10 {color: #FFFFFF}
.style11 {font-size: 15px}
.style13 {font-family: "Times New Roman", Times, serif; font-size: 15px; color: #000000; }
.style14 {font-size: 20px}
.style15 {font-family: "Times New Roman", Times, serif; font-size: 15px; }
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
          <h2 align="center" class="style1">View Purchased Products Status </h2>
		  <p>&nbsp;</p>



<table width="643" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr bgcolor="#00FF33">
                      <td width="47" height="44" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Id  </div></td>
					  <td width="110" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Product Name  </div></td>
                      <td width="102" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Requested Date </div></td>
					  <td width="96" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Response  Date </div></td>
                      <td width="95" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style10 style9 style11">Response Status</div></td>
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   String user=(String)application.getAttribute("user");
		   
		   String query="select * from Bank_req_res where user='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//pn
		s4=rs.getString(4);//permission
		s5=rs.getString(5);//req_dt
		s6=rs.getString(6);//res_dt
		
		
		%>
                    
                    <tr>
                      <td height="105"><div align="center" class="style13"><%=j%></div></td>
                      <td><div align="center" class="style13"><%=s3%></div></td>
					  <td><div align="center" class="style13"><%=s5%></div></td>
					  <td><div align="center" class="style13"><%=s6%></div></td>
                      <%	
			if(s4.equalsIgnoreCase("Approved"))
			{
			
		%>
                      <td><div class="style13">
                        <div align="center">Approved<br /><a href="u_purchase.jsp?usid=<%=i%>&pname=<%=s3%>" class="style6 style14">Purchase</a></div>
                      </div></td>
                      <%
		
			}
			
			else
			{
			String str1="Rejected",str2="Purchased";
			if(s4.equalsIgnoreCase(str1)){
		%>
                      <td width="99"><div class="style13">
                          <div align="center"><%=s4%><br />(Due to Low<br />Account Balance)</div>
                      </div></td>
                    </tr>
        <%
			                             }
										 
			else if(s4.equalsIgnoreCase(str2)){
		%>
                      <td width="99"><div class="style13">
                          <div align="center">Approved and <%=s4%></div>
                      </div></td>
                    </tr>
        <%
			                             }
										 
			else{
		%>
                      <td width="99" height="35"><div class="style13">
                          <div align="center"><%=s4%></div>
                      </div></td>
                    </tr>
        <%
			    }
										 
			 }
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>		  


		  
		  
	  

              <p align="right"><a href="u_main.jsp" class="style15">Back</a></p>		  
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
