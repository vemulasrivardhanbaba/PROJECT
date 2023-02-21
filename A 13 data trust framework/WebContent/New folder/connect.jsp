<title>Data Trust Framework Using Blockchain Technology Auditing for Secure Cloud Storage</title>

<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>

<%
       Connection connection = null;
 	try {
     	

	  	Class.forName("com.mysql.jdbc.Driver");	
	  	 connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/dtfu","root","root");
      

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	
%>