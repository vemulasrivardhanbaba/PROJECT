<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Yante</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {
	color: #CC0000;
	font-size: 24px;
}
.style3 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
        <div class="logo style1">
          <h3 class="style2 style3">Data Trust Framework Using Blockchain Technology</h3>
          <h3 class="style2">and Adaptive Transaction Validation </h3>
       </div>
      <div class="menu_nav">
         <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="usermain.html">User</a> </li>
          <li><a href="auditor.jsp"><span>DTP</span></a></li>
          <li><a href="csprovider.jsp">Cloud Service Provider</a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           <h2>Login Failed...!</h2>
          <p><table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0 bgcolor=#FFFFFF>
<tr>
<td width="405" height="189" align=center><font class=sb4>Sorry.</font><BR>
  <BR>
<font class=sb3>
Your login failed.<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0 height="7"><TR><TD height=7></TD></TR></TABLE>
This happens due to - Incorrect Username / Incorrect password<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0 width="10"><TR>
  <TD height=9 width="10"></TD></TR></TABLE>
In case you have forgotten your password,<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0><TR><TD height=9></TD></TR></TABLE>
click&nbsp; here to re enter correct&nbsp; username or password on homepage.
<BR><BR>
<%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("end user")){
%>
<a href="usermain.jsp">Click here to go back</a>		<a href="index.html"><span>Home Page</span></a>
</BR>
<%}
else if(type.equalsIgnoreCase("data owner")){
%>
<a href="usermain.jsp">Click here to go back</a><BR><a href="index.html"><span>Home Page</span></a>
<%}
else if(type.equalsIgnoreCase("server")){
%><a href="csprovider.jsp">Click here to go back</a><BR><a href="index.html"><span>Home Page</span></a>
<%}
else if(type.equalsIgnoreCase("auditor")){
%>
<a href="auditor.jsp">Click here to go back</a><BR><a href="index.html"><span>Home Page</span></a>
<%}
%>
</font></td>
</tr>
</table>
          </p>
          <p class="style1">&nbsp;</p>
          <p class="infopost">&nbsp; <a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
          <div class="post_content">
            <p class="spec"><a href="#" class="rm">..</a></p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>