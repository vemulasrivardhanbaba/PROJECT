<title>Data Trust Framework Using Blockchain Technology Auditing for Secure Cloud Storage</title>

<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");
	
	application.setAttribute("type",type);
    try{
		if(type.equalsIgnoreCase("server"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("server",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("servermain.jsp");
				}
				else
				{
				response.sendRedirect("wronglogin.jsp");
			}	}
			else if(type.equalsIgnoreCase("auditor"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("auditor",username);
			
			String sql="SELECT * FROM auditor where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("auditormain.jsp");
				}
				else
				{
				response.sendRedirect("wronglogin.jsp");
			}	}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>