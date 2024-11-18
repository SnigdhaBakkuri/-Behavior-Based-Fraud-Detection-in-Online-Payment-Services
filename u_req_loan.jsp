<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request Loan</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{

var na8=document.s.desc.value;
if(na8=="")

{
alert("Please Write About Your Income ");
document.s.desc.focus();
return false;
}

var na9=document.s.amount.value;
if(na9=="")

{
alert("Please Enter Loan Amount");
document.s.amount.focus();
return false;
}


}

</script>

<style type="text/css">
<!--
.style1 {color: #0066FF}
.style9 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}
.style12 {color: #000000}
.style13 {
	font-size: 15px;
	color: #000000;
}
.style14 {font-family: "Times New Roman", Times, serif}
.style16 {
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
          <h2 align="center" class="style1">Bank Loan Request Form </h2>
		  <p>&nbsp;</p>


<%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
<%
   String email=(String)application.getAttribute("email");
   String mob=(String)application.getAttribute("mob");
   String loc=(String)application.getAttribute("loc");
   String user=(String)application.getAttribute("user");
try{   
                        String query1="select * from account  where user='"+user+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						if ( rs1.next() )
					    {

%>		  

		  
<form name="s" action="u_req_loan_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
          
						
                        <span class="style12 style9 style13">
                        <label for="email">User Name (required)</label>
                        </span>
                        <p class="style12 style9 style13">
                          <input id="name" name="name" value="<%=user%>" class="text" />
                        </p>
						
                        <span class="style12 style9 style13">
                        <label for="email">Email Address (required)</label>
                        </span>
                        <p class="style12 style9 style13">
                          <input id="email" name="email" value="<%=email%>" class="text" />
                        </p>
                        <span class="style12 style9 style13">
                        <label for="mobile">Mobile Number (required)</label>
                        </span>
                        <p class="style12 style9 style13">
                          <input id="mobile" name="mobile" value="<%=mob%>" class="text" />
                        </p>
                        <span class="style12 style9 style13">
                        <label for="address">Your Location</label>
                        </span>
                        <span class="style12 style9 style13">
                        <label for="label"> (required)</label>
                        </span>
<p class="style12 style9 style13">
                          <input id="location" name="location" value="<%=loc%>" class="text" />
          </p>
						<span class="style11 style9">
                  <label for="pdescription"><span class="style12">Tell Us Briefly About Your Income Background</span><span class="style12 style9 style13"> (required) </span> <br />
                  </label>
                  </span>
                  <p class="style4 style9 style10">
                    <textarea name="desc" cols="35" id="pdesc"></textarea>
                  </p>
                        <p class="style12 style9 style13">
                          <label for="amount">Loan <span class="style14">Amount (required)</span></label>
                        </p>
                        <p class="style14">
                          <input id="amount" name="amount" class="text" />
                        </p>
                        <p class="style14"><br />
                            <input name="Submit" type="submit" value="Request Loan" />
                        </p>
                        <p>&nbsp;</p>
  </form>	  


<p>
  <%
                 }
				 else
				 {
				  %>
    <span class="style16">You Have Not Created Your "Online Account" Yet .</span></p>
<p><span class="style16">First Create your Account, then Request for Loan.</span>
      <%
				 }
			
}
catch (Exception e) 
{
out.println(e.getMessage());
}
%>
  
  
  
  
  
  
  
</p>
<p align="right"><a href="u_main.jsp">Back</a></p>		  
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
