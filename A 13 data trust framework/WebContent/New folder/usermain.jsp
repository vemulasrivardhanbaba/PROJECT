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
.style3 {font-size: 14px}
.style4 {color: #FF3333}
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
          <li></li>
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
          <h2>Welcome  User </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <form action="authentication.jsp" method="post" id="leavereply">
            <ol>
             
              <span class="style8 style3 style4"></span>
              <li>
                <span class="style8 style3 style4">
                <label for="user">Select User Type (required)</label>
                </span><span class="style8">
                <label for="user"></label>
                <select id="s1" name="user" style="width:480px;" class="text">
                  <option>--Please Select User--</option>
                  <option>Data Owner</option>
                  <option>End User</option>
                </select>
                </span></li>
                 <li class="style2">
                <label for="name"><strong>Name (required)</strong></label>
                <span class="style6"><span class="style7">                <strong>
                <input id="name" name="userid" class="text" />
                </strong></span></span></li>
              <li>
                <span class="style7 style2"><em><strong>
                <label for="email">Password (required)</label>
                </strong></em></span><span class="style7"><em><strong><label for="email"></label>
                </strong></em></span><em><strong><label for="email"></label>
                </strong></em><strong>
                <input type="password" id="pass" name="pass" class="text" />
                <label for="email"></label>
                </strong>
                <label for="email"></label>
              </li>
			   
              <li>
                <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
                <input name="Reset" type="reset" class="style3" value="Reset" />
                New user?<a href="register.jsp">Register </a></li>
              <li></li>
              <li><br />
              </li>
            </ol>
          </form>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="usermain.jsp">User</a></li>
            <li><a href="auditor.jsp">DTP</a></li>
            <li><a href="csprovider.jsp">Cloud Service Provider </a></li>
           
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
