<title>Add Product Status</title>
            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
			<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
			<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0,n = 0,n1 = 0;
					String bin = "";
					String pname=null;     
        			String pdesc=null;
					String puses=null;
					String pman=null;
					String pprice=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String status="Waiting";
					String gender=null;
					String pincode=null;
				
					FileInputStream fs=null;
					File file1 = null;	
					
					try {
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("pname"))
							{
								pname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pdesc"))
							{
								pdesc=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("puses"))
							{
								puses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pman"))
							{
								pman=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pprice"))
							{
								pprice=multi.getParameter(paramname);
							}
									
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						}
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 			String query1="select * from products where pname='"+pname+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
								out.println("Product Name Already Exist");							
							%>
							<p><a href="s_add_pro.jsp">Back</a>         </p>
							<p><a href="s_main.jsp">SP Main</a> </p>
							<%
					   }
					   else
					   {
					   
					String keys="q2e34rrfgfgfgg2a";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.ENCRYPT_MODE, key);
      			
					String encpdesc = new String(Base64.encode(pdesc.getBytes()));
					 
					String user=(String)application.getAttribute("sp");
					String rk="0";
					PreparedStatement ps=connection.prepareStatement("insert into products(pname,pdesc,puses,pman,pprice,image,uploader,rank) values(?,?,?,?,?,?,?,?)");
						ps.setString(1,pname);
						ps.setString(2,encpdesc);
						ps.setString(3,puses);	
						ps.setString(4,pman);
						ps.setString(5,pprice);
						ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));	
						ps.setString(7,user);
						ps.setString(8,rk);
						
						if(f == 0)
							ps.setObject(6,null);
						else if(f == 13)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(6,fs1,fs1.available());
						}
					   
						
						int x=ps.executeUpdate();
						if(x>0){
						
					
						
								out.println("Product Sucessfully Added ");							
							
								%>
								<p><a href="s_add_pro.jsp">Back</a>   </p>
								<p><a href="s_main.jsp">SP Main</a> </p>
								<%
							   
							   }
						}
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
