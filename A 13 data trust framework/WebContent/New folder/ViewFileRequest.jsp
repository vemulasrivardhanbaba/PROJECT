<%@ include file="connect.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Trust Framework</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style3 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
	<div class="logo style1">
        <h3 class="style1 style2">Data Trust Framework Using Blockchain Technology</h3>
        <h3 class="style2 style1 style1">and Adaptive Transaction Validation  </h3>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="usermain.jsp">User</a> </li>
          <li><a href="auditor.jsp"><span>DTP</span></a></li>
          <li class="active"><a href="csprovider.jsp">Cloud Service Provider</a></li>
          <li><a href="csprovider.jsp">Logout </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>View File Requester Details .. </h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="670" border="1" align="center">
  <tr>
   <td width="177" bgcolor="#FF0000" ><div align="center" class="style3"><strong>EndUser Name</strong></div></td>
      <td width="153" bgcolor="#FF0000" ><div align="center" class="style3"><strong>File Request</strong> </div></td>
   
     <td width="173" bgcolor="#FF0000" ><div align="center" class="style3"><strong>Req Date Time</strong></div></td>
      <td width="220" bgcolor="#FF0000" ><div align="center" class="style3"><strong>Processed Status</strong> </div></td>
  </tr>
        
     <%
             	String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
             	int i = 0, j = 0, k = 0;
             	String fname = request.getParameter("fn");
             	try {

             		String query = "select * from userrequest ";
             		Statement st = connection.createStatement();
             		ResultSet rs = st.executeQuery(query);
             		while (rs.next()) {
             			s1 = rs.getString(1);
             			s2 = rs.getString(2);
             			s3 = rs.getString(3);
             			s4 = rs.getString(4);
             			s5 = rs.getString(5);
             			
             %>
		

  <tr>
		<td height="29">
		<div align="center" class="style2"><%=s1%></div>		</td>
		<td>
		<div align="center" class="style2"><%=s2%></div>		</td>

		
		<td height="29">
		<div align="center" class="style2"><%=s3%></div>		</td>

		
	
		
		<%if(!s5.equalsIgnoreCase("Waiting"))
		{%>
		<td height="29">
			<div align="center" class="style2"><%=s5%></div>		</td>
		<%}
		else
		{%>
		<td width="17" height="29">
	<div align="center" class="style2"><a href="Process.jsp?uname=<%=s1%>&fname=<%=s2%>"><%=s5%></a></div>		</td>
	<%	}%>
	</tr>

<%
	}

		connection.close();
	}

	catch (Exception e) {
		out.println(e.getMessage());
	}
%>
</table>
           </p>
          <p><a href="servermain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
			
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search here" onBlur="if(this.value=='') this.value='Search here'" onFocus="if(this.value =='Search here' ) this.value=''" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="servermain.jsp">Home</a></li>
            <li><a href="csprovider.jsp">Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
