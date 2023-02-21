<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.math.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>Data Trust Framework</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>


<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style4 {color: #FF0000; font-size: 18px; }
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
          <li class="active"><a href="usermain.jsp" class="active">User</a> </li>
          <li><a href="auditor.jsp"><span>DTP</span></a></li>
          <li><a href="csprovider.jsp">Cloud Service Provider</a></li>
          <li><a href="usermain.jsp">Logout</a></li>
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
          <h2>Enter Block Name to Update</h2>
          <p>&nbsp;</p>
          <div>
           <% 
						
						try
						 
	{
      		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
	
		String file = request.getParameter("file");
		String cont = request.getParameter("cont");
			String block = request.getParameter("block");
		String query1="",query2="",query3="",tquery="" ;
		String mac = request.getParameter("mac");
			String owner = (String)application.getAttribute("owner");
				
								
		String cloud = "cloud";
			
      		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

		

		String user = "Data Owner";
		String task = "Update";
					Statement st211 = connection.createStatement();
					Statement st2111 = connection.createStatement();
		Statement st21 = connection.createStatement();
		if(block.equalsIgnoreCase("Block1"))
		{
		query1="update cloudserver set mac1='"+mac+"',ct1='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update backupcloudserver  set mac1='"+mac+"',ct1='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query3="update tpa  set mac1='"+mac+"' where fname='"+file+"' and ownername='"+owner+"' ";
		
		 tquery = "insert into tpa_transaction(user,fname,bname,task,dt) values('"
					+ owner
					+ "','"
					+ file
					+ "','"
					+ block
					+ "','"
					+ task
					+ "','" + dt + "')";
			connection.createStatement().executeUpdate(tquery);
			
		
		}
		if(block.equalsIgnoreCase("Block2"))
		{
		query1="update cloudserver set mac2='"+mac+"',ct2='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update backupcloudserver  set mac2='"+mac+"',ct2='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query3="update tpa  set mac2='"+mac+"' where fname='"+file+"' and ownername='"+owner+"' ";
		
		 tquery = "insert into tpa_transaction(user,fname,bname,task,dt) values('"
					+ owner
					+ "','"
					+ file
					+ "','"
					+ block
					+ "','"
					+ task
					+ "','" + dt + "')";
			connection.createStatement().executeUpdate(tquery);
		
		
		}
		if(block.equalsIgnoreCase("Block3"))
		{
		query1="update cloudserver set mac3='"+mac+"',ct3='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update backupcloudserver  set mac3='"+mac+"',ct3='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query3="update tpa  set mac3='"+mac+"' where fname='"+file+"' and ownername='"+owner+"' ";
		
		tquery = "insert into tpa_transaction(user,fname,bname,task,dt) values('"
					+ owner
					+ "','"
					+ file
					+ "','"
					+ block
					+ "','"
					+ task
					+ "','" + dt + "')";
			connection.createStatement().executeUpdate(tquery);
		
		}
		if(block.equalsIgnoreCase("Block4"))
		{
		query1="update cloudserver set mac4='"+mac+"',ct4='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query2="update backupcloudserver  set mac4='"+mac+"',ct4='"+cont+"' where fname='"+file+"' and ownername='"+owner+"' ";
		query3="update tpa  set mac4='"+mac+"' where fname='"+file+"' and ownername='"+owner+"' ";
		
		
		 tquery = "insert into tpa_transaction(user,fname,bname,task,dt) values('"
					+ owner
					+ "','"
					+ file
					+ "','"
					+ block
					+ "','"
					+ task
					+ "','" + dt + "')";
			connection.createStatement().executeUpdate(tquery);
		
		}
	int x =	st21.executeUpdate(query1);
		int y = st211.executeUpdate(query2);
		int z = st2111.executeUpdate(query3);
	
	if(x>0 )
	{
	%>
	<h1 class="style2">Data Updated Successfully !!!</h1>
	<%
	}

        
          }
         
          catch(Exception e)
          {
          e.printStackTrace();
          }
%>
	<p><span class="style4">Data Updated Successfully !!!</span><br />
</p>
<h2 class="style2">&nbsp;</h2>
<p><a href="ownermain.jsp">BACK</a></p>
          </div>
          <div align="justify"></div>
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
            <li><a href="ownermain.jsp">Home</a></li>
            <li><a href="usermain.jsp">Logout</a></li>
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
