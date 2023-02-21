
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
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style3 {color: #FFFFFF}
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
          <h2>Data Owners Details... </h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <div align="left">
            <table width="859" border="1" align="left">
              <tr>
                <td width="197" height="32" bgcolor="#FF0000"><div align="center" class="style3"><b>Owner Image </b></div></td>
      <td width="133" bgcolor="#FF0000"><div align="center" class="style3"><b>Owner Name </b></div></td>
      <td width="116" bgcolor="#FF0000"><div align="center" class="style3"><b>DOB</b></div></td>
      <td width="132" bgcolor="#FF0000"><div align="center" class="style3"><b>E-Mail</b></div></td>
      <td width="97" bgcolor="#FF0000"><div align="center" class="style3"><b>Mobile</b></div></td>
      <td width="209" bgcolor="#FF0000"><div align="center" class="style3"><b>Address</b></div></td>
  </tr>
              
  <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;
String ii="";
      	try 
	{
        
           String query="select * from owner "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		ii=rs.getString("id");
		s2=rs.getString("username");
		
		s3=rs.getString("dob");
		s4=rs.getString("email");
		s5=rs.getString("mobile");
	
		s7=rs.getString("address");
		
		i=Integer.parseInt(ii);
%>
              
              
              
              <tr>
                <td><div align="center">
                  <input  name="image" type="image" src="images.jsp?imgid=<%=ii%>" width="100" height="100" alt="Submit">
                </input></div></td>
      <td><div align="center" class="style2"><%=s2%></div></td>
      <td><div align="center" class="style2"><%=s3%></div></td>
      <td><div align="center" class="style2"><%=s4%></div></td>
      <td><div align="center" class="style2"><%=s5%></div></td>
  
    <td><div align="center" class="style2"><%=s7%></div></td>
    </tr>
              
  <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
          </div>
          <p>&nbsp;</p>
          <p><a href="servermain.jsp">Back</a></p>
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
