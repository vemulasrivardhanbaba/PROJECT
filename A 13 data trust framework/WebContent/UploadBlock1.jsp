

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
          <h2>Welcome  to Data Owner </h2>
          <p>&nbsp;</p>
          <div class="clr">
             <% try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h[]=new String[5];
      		String filename="filename.txt";
			String filename1="filename1.txt";
			String filename2="filename2.txt";
			String filename3="filename3.txt";
			String filename4="filename4.txt";
			ResultSet rs=connection.createStatement().executeQuery("select * from cloudserver where fname='"+file+"' ");
			
      		
			int sourceFileSize=cont.length();
			int s=sourceFileSize%4;
			int s1=sourceFileSize/4;
			int a1=s1;
			int a2=s1+s1;
			int a3=s1+s1+s1;
			int a4=s1+s1+s1+s1+s;
			
			String encryptedValue3="",encryptedValue2="",encryptedValue1="",encryptedValue4="";
			
			
		//	String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				 encryptedValue1 = new String(Base64
														.encode(cont.substring(0,a1).getBytes()));
														 encryptedValue2 = new String(Base64
														.encode(cont.substring(a1+1,a2).getBytes()));
														 encryptedValue3 = new String(Base64
														.encode(cont.substring(a2+1,a3).getBytes()));
														 encryptedValue4 = new String(Base64
														.encode(cont.substring(a3+1,a4).getBytes()));		
												
			
			
			
			
			/*encryptedValue1=cont.substring(0,a1);
			encryptedValue2=cont.substring(a1+1,a2);
			encryptedValue3=cont.substring(a2+1,a3);
			encryptedValue4=cont.substring(a3+1,a4);*/
			
			//int NSplits=sourceFileSiz/5
			%>
			source<%=sourceFileSize %>
			a1<%=a1 %>
			a2<%=a2 %>
			a3<%=a3 %>
			a4<%=a4 %>
			split<%=s %>
			<%
      	
			PrintStream p1 = new PrintStream(new FileOutputStream("filename1.txt"));
			p1.print(new String(encryptedValue1));
			PrintStream p2 = new PrintStream(new FileOutputStream("filename2.txt"));
			p2.print(new String(encryptedValue2));
			PrintStream p3 = new PrintStream(new FileOutputStream("filename3.txt"));
			p3.print(new String(encryptedValue3));
			PrintStream p4 = new PrintStream(new FileOutputStream("filename4.txt"));
			p4.print(new String(encryptedValue4));
			
			for(int i=1;i<5;i++)
			{
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream("filename"+i+".txt");
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h[i] = bi1.toString(16);
			
			
			
			
      	}	
	
%>
 
					
          <form action="UploadBlock2.jsp" method="post">
<table width="598" border="1" align="center">

	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style4 style3">File Name :- </span></td>
		<td width="356"><input name="t42" type="text" id="t42" size="50"
			value="<%= file %>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style4 style3">Block-1 </span></td>
		<td width="286"><span class="style4">Size:<%=a1%>Bytes</span></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style3"></span></td>
		<td><textarea name="text1" cols="50" rows="15" readonly><%= encryptedValue1 %></textarea></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style4 style3">Hash-1: </span></td>
		<td><input name="t1" type="text" id="t4" size="50"
			value="<%= h[1] %>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style4 style3">Block-2 </span></td>
		<td width="286"><span class="style4">Size:<%=(a2-a1)%>Bytes</span></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style3"></span></td>
		<td><textarea name="text2" cols="50" rows="15" readonly><%= encryptedValue2 %></textarea></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style4 style3">Hash-2: </span></td>
		<td><input name="t2" type="text" id="t4" size="50"
			value="<%= h[2] %>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style4 style3">Block-3 </span></td>
		<td width="286"><span class="style4">Size:<%=(a3-a2)%>Bytes</span></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style3"></span></td>
		<td><textarea name="text3" cols="50" rows="15" readonly><%= encryptedValue3 %></textarea></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style4 style3">Hash-3: </span></td>
		<td><input name="t3" type="text" id="t4" size="50"
			value="<%= h[3]%>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style4 style3">Block-4 </span></td>
		<td width="286"><span class="style4">Size:<%=(a4-a3)%>Bytes</span></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style3"></span></td>
		<td><textarea name="text4" cols="50" rows="15" readonly><%= encryptedValue4 %></textarea></td>
	</tr>
	
	<tr>
		<td bgcolor="#FF0000"><span class="style4 style3">Hash-4: </span></td>
		<td><input name="t4" type="text" id="t4" size="50"
			value="<%= h[4] %>" readonly="readonly" /></td>
	</tr>
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"></div>		</td>
		<td><input type="submit" name="Submit2" value="Upload" /></td>
	</tr>
</table>
</form>
  <%

	 
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </div>
          <div align="justify"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
         
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
