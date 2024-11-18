<title>loan verification</title>
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
<%
int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0;
			int accno=0;
  			String s1,s2,s3,s4;
int uid = Integer.parseInt(request.getParameter("usid"));
String user = request.getParameter("user");
int amt = Integer.parseInt(request.getParameter("amt"));

try {
			
			        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					Statement st1 = connection.createStatement();
			
			String query11="select amount from account where user='"+user+"' "; 
			Statement st11=connection.createStatement();
			ResultSet rs11=st11.executeQuery(query11);
			if ( rs11.next()==true){
			
			                         int amt2=rs11.getInt(1);
			
			                         int amt3=amt2+amt;
			
			String query111 ="update account set amount='"+amt3+"' where user='"+user+"' ";
			st1.executeUpdate (query111);
			
			String str="Approved";
			String query1 ="update loan set status='"+str+"',res_dt='"+dt+"' where id='"+uid+"' ";
			st1.executeUpdate (query1);
			                       
								   }
			
										

connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("b_loan_req_res1.jsp");
%>
</body></html>