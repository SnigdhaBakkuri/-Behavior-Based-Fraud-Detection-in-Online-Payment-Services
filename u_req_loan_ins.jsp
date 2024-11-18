<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Loan Request Status</title>

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
			       
									
					
try {
						
						String uname=(String)application.getAttribute("user");
						String email=request.getParameter("email");
						String mno=request.getParameter("mobile");
						String loc=request.getParameter("location");
						String amount=request.getParameter("amount");
						String desc=request.getParameter("desc");
						
				    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					
						
						
			 			
					   
					String str="Requested";
PreparedStatement ps=connection.prepareStatement("insert into loan(user,location,email,mob,amount,descr,status,req_dt) values(?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,loc);
						ps.setString(3,email);
						ps.setString(4,mno);	
						ps.setString(5,amount);
						ps.setString(6,desc);
						ps.setString(7,str);
						ps.setString(8,dt);
					
						
				       
						
											
						
						int x=ps.executeUpdate();
						if(x>0)
						{ 
						%>
                    <p class="style6">Loan Requested Successfully</p>
                    <p>&nbsp; </p>
                    <p>
                      <%	
							
			%>
                    </p>
                    <p align="left"><a href="u_req_loan.jsp" class="style16">Back</a></p>
                    <%
			
					}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    