<title>loan requests</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<table width="1164" border="1.5" cellpadding="0" cellspacing="0" align="left">
                    <tr bgcolor="#00FF33">
                      <td width="44" height="44" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1">Id  </div></td>
                      <td width="104" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1">User  </div></td>
					  <td width="89" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1">Loan Amount  </div></td>
                      <td width="182" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1">User Background </div></td>
					  <td width="124" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1">User Location</div></td>
					  <td width="87" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1"> Email</div></td>
					  <td width="87" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1"> Mobile</div></td>
					  <td width="116" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1"> Requested Date</div></td>
					  <td width="102" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1"> Response Date</div></td>
                      <td width="78" bgcolor="#FF00FF"><div align="center" class="style27 style20 style3 style7 style8 style1"> Status </div></td>
		  </tr>

<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   String query="select * from loan "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//loc
		s4=rs.getString(4);//email
		s5=rs.getString(5);//mob
		s6=rs.getString(6);//amt
		s7=rs.getString(7);//status
		s8=rs.getString(8);//descr
		s9=rs.getString(9);//res_dt
		s10=rs.getString(10);//res_dt
		
		
		
		%>
                    
                    <tr>
                      <td><div align="center" class="style9 style6"><%=j%></div></td>
                      <td><div align="center" class="style9 style6"><%=s2%></div></td>
                      <td><div align="center" class="style9 style6"><%=s6%></div></td>
                      <td><div align="center" class="style9 style6"><textarea name="textarea" cols="15" rows="5" readonly><%= s8 %></textarea></div></td>					                      <td><div align="center" class="style9 style6"><%=s3%></div></td>
					  <td><div align="center" class="style9 style6"><%=s4%></div></td>
                      <td><div align="center" class="style9 style6"><%=s5%></div></td>
					  <td><div align="center" class="style9 style6"><%=s9%></div></td>
					  <td><div align="center" class="style9 style6"><%=s10%></div></td>
                      <%	
			if(s7.equalsIgnoreCase("Requested"))
			{
			
		%>
                      <td><div class="style9 style6">
                          <div align="center"><a href="b_loan_req_res2.jsp?usid=<%=i%>&user=<%=s2%>&amt=<%=s6%>" class="style10"><%=s7%></a></div>
                      </div></td>
                      <%
		
			}
			
			else
			{
			
			
			
		%>
                      <td width="127"><div class="style9 style6">
                          <div align="center"><%=s7%> and the Amount is Deposited to User Account</div>
                      </div></td>
                    </tr>
                    <%
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
