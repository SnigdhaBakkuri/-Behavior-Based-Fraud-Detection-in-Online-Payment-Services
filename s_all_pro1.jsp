<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<style type="text/css">
<!--
.style2 {color: #FFFFFF}
-->
</style>


<table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
              <td width="21" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Id</div></td>
              <td width="91" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Product Name </div></td>
              <td width="107" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Product Image </div></td>
			  <td width="107" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Product Price </div></td>
              <td width="136" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Description</div></td>
              <td width="127" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Uses</div></td>
              <td width="127" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Product Manufacturer</div></td>
              <td width="127" bgcolor="#FF00FF"><div align="center" class="style3 style4 style5 style9 style2">Rank</div></td>
              <td width="127" bgcolor="#FF00FF"><div align="center" class="style6 style3 style4 style2">Rating</div></td>
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
		int i = 0, j = 1, k = 0;
		
		
        
		
		try {

			String user=(String)application.getAttribute("sp");
			String query = "select * from products where uploader='"+user+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);//pn
				s3 = rs.getString(3);//pd
				s4 = rs.getString(4);//pu
				s5 = rs.getString(5);//pm
				s6 = rs.getString(6);//pp
				s7 = rs.getString(7);//img
				//s8 = rs.getString(8);//user
				s9 = rs.getString(9);//rk
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   String decrys3 = new String(Base64.decode(s3.getBytes()));

	%>

	<tr>
		      <td height="29"><div align="center" class="style9 style10"><%=j%></div></td>
              <td height="29"><div align="center" class="style9 style10"><%=s2%></div></td>
              <td height="80"><div align="center" class="style9 style10">
                <input  name="image" type="image" src="product_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
              </div></td>
			  <td height="29"><div align="center" class="style9 style10"><%=s6%></div></td>
              <td><div align="center" class="style9 style10">
                <textarea name="text" cols="10" rows="7" readonly><%= decrys3 %></textarea>
              </div></td>
              <td><div align="center" class="style9 style10">
                <textarea name="text" cols="10" rows="7" readonly><%= s4 %></textarea>
              </div></td>
              <td height="29"><div align="center" class="style9 style10"><%=s5%></div></td>
              <td height="29"><div align="center" class="style8 style10"><%=s9%></div></td>
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

	<% j=j+1;
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
