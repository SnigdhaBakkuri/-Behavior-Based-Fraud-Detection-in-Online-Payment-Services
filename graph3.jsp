
<%@ include file="connect.jsp"%>

<%
try
{
	 String query="select distinct upd_per from Bank_req_res where upd_per='Approved' || upd_per='Rejected' || upd_per='Purchased' "; 
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
					
%>

<html>
<head>
<title>Product Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #C1FFFF}
.style3 {color: #F0F0F0}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0,count1=0;
	String s1,s2="Released",s3="Hold",s4="Released & Purchased";

	while(rs.next())
	{
	  s1=rs.getString(1);
	  				
				    count=0;
					
					if(s1.equalsIgnoreCase("Rejected"))
					{
	  				String query1="select * from Bank_req_res where upd_per='Rejected' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while(rs1.next())
					{
					
						count++;
	 			    }
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s3%>",<%= count%>];
        
	<%
	                i++;
					}//if close
					
	else if(s1.equalsIgnoreCase("Purchased"))
					{
	  				String query1="select * from Bank_req_res where upd_per='Purchased' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while(rs1.next())
					{
					
						count++;
	 			    }
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s4%>",<%= count%>];
        
	<%
	                i++;
					}
	
	else
	{
	count=0;
	                String query1="select * from Bank_req_res where upd_per='Approved' || upd_per='Purchased' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
					while(rs1.next())
					{
						count++;
	 			    }
	%>
	
	myData["<%=i%>"]=["<%= s2%>",<%= count%>];
        
	<%
	i++;
	
	}//else close
	}//while close
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setSize(600, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#0588c6');
	myChart.setAxisValuesColor('#FF0000');
	//myChart.setSize(300,300);
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

