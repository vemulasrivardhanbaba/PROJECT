<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration</title>
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
.style1 {font-size: 24px}
.style2 {color: #CC0000}
.style3 {
	font-size: 14px;
	font-weight: bold;
	color: #FF0000;
}
.style4 {
	font-size: 14px;
	font-weight: bold;
}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style1">
        <h3 class="style2">Data Trust Framework Using Blockchain Technology</h3>
        <h3 class="style2">and Adaptive Transaction Validation  </h3>
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
          <h2><span>User Registration Form</span></h2>
          <p class="infopost">&nbsp; <a href="#" class="com"></a></p>
          <div class="clr"></div>
          <form action="insertdata.jsp" method="post" id="" enctype="multipart/form-data">
            <ol>
              <li><label for="user"><span class="style3">Select User Type(required)</span></label>
              <p>
                <select id="select" name="user" style="width:480px;" class="text">
                  <option selected="selected">--Please Select User Type--</option>
                  <option>Data Owner</option>
                  <option>End User</option>
                  </select>
              </p>
              </li>                                
              <li class="style6">
                <label for="name">User Name (required)</label>
                <input id="name" name="userid" class="text" />
              </li>
              <li class="style6">
                <label for="password">Password (required)</label>
                <input type="password" id="password" name="pass" class="text" />
              </li>
              <li class="style6">
                <label for="email">Email Address (required)</label>
                <input id="email" name="email" class="text" />
              </li>
              <li class="style6">
                <label for="mobile">Mobile Number (required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              <li class="style6">
                <label for="dob">Date of Birth (required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
              <li class="style6">
                <label for="gender">Select Gender (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
              </li>
              <li class="style6">
                <label for="address">Your Address</label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
              <li class="style6">
                <label for="pincode">Enter Pincode (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
              <li>
                <span class="style6">
                <label for="pic">Select Profile Picture (required)</label>
                </span><span class="style5"><label for="pic"></label>
                </span>
                <label for="pic"></label>
                <input type="file" id="pic" name="pic" class="text" />
              </li>
              <ol>
                <li> 
                  <div align="left"><br />
                    <input name="submit" type="submit" value="REGISTER" />
                  </div>
                </li>
				<div align="right"><a href="usermain.jsp" class="style4">Back</a>			    </div>
              </ol>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
          </form>
          <div class="img"></div>
          <div class="post_content"></div>
	  
	  </div>
	  </div>
	  
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           <li class="active"><a href="index.html"><span>Home </span></a></li>
          <li><a href="usermain.html">User</a> </li>
          <li><a href="auditor.jsp"><span>DTP</span></a></li>
          <li><a href="csprovider.jsp">Cloud Service Provider</a></li>
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
