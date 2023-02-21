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
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


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
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>


<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style14 {font-size: 14px; color: #FF0000; font-weight: bold; font-style: italic; }
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
          <li><a href="usermain.jsp"> Logout</a></li>
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
          <h2>Download File </h2>
          <p>&nbsp;</p>
          <div ></div>
          <p>&nbsp;</p>
       
	   
	   
	    <%
		   	try {
		   		String file = request.getParameter("t1");
		   		String owner = request.getParameter("oname");
		   		String mac1 = request.getParameter("t12");
					String mac2 = request.getParameter("t122");
						String mac3 = request.getParameter("t123");
							String mac4 = request.getParameter("t124");
		   		String sk = request.getParameter("t13");

		   		application.setAttribute("file2", file);
		   		application.setAttribute("sk2", sk);

		   		String strQuery = "select * from cloudserver where fname='"
		   				+ file
		   				+ "' and ownername='"
		   				+ owner
		   				+ "' and  mac1='"
		   				+ mac1
		   				+ "' and  mac2='"
		   				+ mac2
		   				+ "' and  mac3='"
		   				+ mac3
		   				+ "' and  mac4='"
		   				+ mac4
		   				+ "' and  sk='" + sk + "'";
		   	
	String strQuery1 = "select * from cloudserver where fname='"
		   				+ file
		   				+ "' ";
							ResultSet rs1 = connection.createStatement().executeQuery(
		   				strQuery1);
		   		ResultSet rs = connection.createStatement().executeQuery(
		   				strQuery);
		   		
			if(rs1.next())
			{
					if(rs.next())
					{
							String ct1 = rs.getString(4);
								String ct2 = rs.getString(6);
									String ct3 = rs.getString(8);
										String ct4 = rs.getString(10);
										

												String keys = "ef50a0ef2c3e3a5f";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												String decryptedValue1 = new String(Base64
														.decode(ct1.getBytes()));
														String decryptedValue2 = new String(Base64
														.decode(ct2.getBytes()));
														String decryptedValue3 = new String(Base64
														.decode(ct3.getBytes()));
														String decryptedValue4 = new String(Base64
														.decode(ct4.getBytes()));
						%>
			
		  </p>
		  <p align="center" class="style1">File Contents</p>

		    <label>
	            <div align="center">
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue1%><%=decryptedValue2%><%=decryptedValue3%><%=decryptedValue4%></textarea>
				  
	              <br/>
	              <br/>
	              <td><button onClick="saveTextAsFile()">Download</button></td>
            </div>
		    </label>
		  <p align="center">&nbsp; </p>
		  <p>
		    <%
		    	} 
				else {
					SimpleDateFormat sdfDate = new SimpleDateFormat(
							"dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat(
							"HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;

					String user = (String) application
							.getAttribute("uname");
String type="Internal";
					String strQuery2 = "insert into attacker(user,fname,ownername,sk,type,dt) values('"
							+ user
							+ "','"
							+ file
							+ "','"+owner+"','"
							+ sk
							+ "','"+type+"','"
							+ dt
							+ "')";
					connection.createStatement().executeUpdate(strQuery2);
	%>
	      </p>
		  <p>
		  <h1 class="style1">Hash / Secret Key Mismatch !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
	<%
		}
		}
		else {
		    %>
	      </p>
		  <p>
		  <h1 class="style1">File Doesn't Exist !!!</h1>
		  </p><br />
						<p><a href="Download.jsp">Back</a></p>
	
		<%}
					
				
			
			connection.close();
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>
	   

          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
          </form>
          <p>&nbsp;</p>
          <div align="justify"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <p>&nbsp; </p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
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
