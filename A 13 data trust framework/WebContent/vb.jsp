
<%@ include file="connect.jsp"%>


<html>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
-->
</style>
         <% try 
	{
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
      		

	String query="select * from cloudserver  "; 
    Statement st5=connection.createStatement();
    ResultSet rs=st5.executeQuery(query);

	%>
         <h1>View Blocks Hash Table Details <span style="color:#FF00FF"> </span>
	     <table width="855" align="center" border="1" cellpadding="3">
	<tr><td width="155" bgcolor="#FF0000"><div align="center" class="style1">File Name</div></td>
	<td width="148" bgcolor="#FF0000"><div align="center" class="style1">Owner Name</div></td>
	<td width="106" bgcolor="#FF0000"><div align="center" class="style1">Block1 Hash</div></td>
	<td width="106" bgcolor="#FF0000"><div align="center" class="style1">Block2 Hash</div></td>
	<td width="106" bgcolor="#FF0000"><div align="center" class="style1">Block3 Hash</div></td>
	<td width="106" bgcolor="#FF0000"><div align="center" class="style1">Block4 Hash</div></td>
	<td width="54" bgcolor="#FF0000"><div align="center" class="style1">SK</div></td>
	</tr>
	<%	
	
	
	while ( rs.next() )
{
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(5);
s4=rs.getString(7);
s5=rs.getString(9);
s6=rs.getString(11);
s7=rs.getString(12);

	
			
			
			
			%>
		<tr><td><div align="center" class="style2"><%=s1%></div></td><td><div align="center" class="style2"><%=s2%></div></td><td><div align="center" class="style2"><%=s3%></div></td><td><div align="center" class="style2"><%=s4%></div></td><td><div align="center" class="style2"><%=s5%></div></td><td><div align="center" class="style2"><%=s6%></div></td><td><div align="center" class="style2"><%=s7%></div></td></tr>	

 <%

}
	   
%>
</table>
<%
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</html>