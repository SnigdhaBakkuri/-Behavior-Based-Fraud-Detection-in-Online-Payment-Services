            <%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<p>
  <%
int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0;
			int accno=0;
  			String s1,s2,s3,s4;
int uid = Integer.parseInt(request.getParameter("usid"));
String user = request.getParameter("user");
String pname = request.getParameter("pname");

try {

            Statement stmt = connection.createStatement();
			Statement st1 = connection.createStatement();
			Statement stmt1 = connection.createStatement();
			
			        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
			
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			  uamount=Integer.parseInt(rs.getString(8));
			  
			                    String sql1="SELECT pprice FROM products where pname='"+pname+"' ";
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
										
										pprice=Integer.parseInt(rs1.getString(1));
										
									if(pprice>uamount)
										{
										
										%>
Still the User Don't Have Sufficient Balance to Purchase. </p>
<p>So The Purchase is Still Kept On-Hold.
  </p>
</p>
<p><a href="b_hold_pur_orders.jsp">Back</a>
  <%
										  
										}
									else{
									      String str="Approved";
										  String query2 ="update Bank_req_res set upd_per='"+str+"',resp_dt='"+dt+"' where id='"+uid+"' ";
										  st1.executeUpdate (query2);
										  
										  
										  %>
 Now This Purchase has Approved.</p>
<p><a href="b_hold_pur_orders.jsp">Back</a>
  <%
										  
										}
										
								  		
										
								}
			}
										
										
										

connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
</body></html>