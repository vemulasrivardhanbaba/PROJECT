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
.style4 {color: #FF0000; font-weight: bold; }
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
          <li>><a href="usermain.jsp">Logout</a></li>
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
          <h2>File  Deleted Confirmation </h2>
          <p>&nbsp;</p>
          <div>
            <%
	String owner=(String)application.getAttribute("owner");
	
  		String file = request.getParameter("file");
		String block = "File Based";
		String task="Delete";
		
   		try {
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		
		
		Statement st1=connection.createStatement();
				Statement st2=connection.createStatement();
								Statement st22=connection.createStatement();
								
								
		int x=st1.executeUpdate(" delete from cloudserver where fname='"+file+"' and ownername='"+owner+"'");
			int y=st2.executeUpdate(" delete from backupcloudserver where fname='"+file+"' and ownername='"+owner+"'");
			
			int z=st22.executeUpdate(" delete from tpa where fname='"+file+"' and ownername='"+owner+"'");
			
			
			String tquery = "insert into tpa_transaction(user,fname,bname,task,dt) values('"
					+ owner
					+ "','"
					+ file
					+ "','"
					+ block
					+ "','"
					+ task
					+ "','" + dt + "')";
			connection.createStatement().executeUpdate(tquery);
		
			
			if(y>0)
			{%>
			<h1> File Deleted successfully</h1>
			<p>
			  <%
			}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>
		    </p>
			<p><a href="ownermain.jsp">Back</a> </p>
          </div>
          <div align="justify"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>About Project</h2>
          <p>&nbsp; </p>
          <div class="img"><img src="images/img2.jpg" width="169" height="205" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify"> Cloud storage is an important branch of cloud
              computing [1], whose goal is to provide powerful and
              on-demand out-sourcing data services for users
              exploiting highly virtualized infrastructures. Due
              to the low-cost and high-performance of cloud storage, a
              growing number of organizations and individuals are
              tending to outsource their data storage to professional
              cloud services providers (CSP), which buoys the rapid
              development of cloud storage and its relative techniques
              in recent years. However, as a new cutting-edge
              technology, cloud storage still faces many security
              challenges . One of the biggest concerns is how to
              determine whether a cloud storage system and its
              provider meet the legal expectations of customers for data
              security. This is mainly caused by the following
            reasons.</p>
            <p align="justify"> First, cloud users (data owners), who outsource
              their data in clouds, can no longer verify the integrity of
              their data via traditional techniques that are often
              employed in local storage scenarios. Second, CSPs, which
              suffer Byzantine failures occasionally, may choose to
              conceal the data errors from the data owners for their<br />
              own self-interest [5]. What is more severe, CSPs might
              neglect to keep or even deliberately delete rarely accessed
              data that belong to ordinary customers to save storage
              space [6]. Therefore, it is critical and significant to
              develop efficient auditing techniques to strengthen data
              owners' trust and confidence in cloud storage, of which
              the core is how to effectively check data integrity
              remotely.</p>
          </div>
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
        <div class="gadget">
          <h2 class="star"><span>Objectives</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li>
              <div align="justify"><strong>Public auditing</strong><br />
                Anyone is
                allowed to verify the correctness and integrity of the users' data stored 
                in the cloud.</div>
            </li>
            <li>
              <div align="justify"><a href="#">Dynamic data auditing</a><br />
                Dynamic data operations
                should be supported while the efficient public
                auditing is achieved.</div>
            </li>
            <li> 
              <div align="justify"><a href="#">Privacy preserving</a><br />
                The TPA cannot derive any
                actual content of users' data from the received<br />
                auditing information</div>
            </li>
            <li>
              <div align="justify"><a href="#">Batch auditing</a><br />
                The TPA can handle multiple
                auditing tasks from various users in a fast and
                cost-efficient manner.            </div>
            </li>
            <li>
              <div align="justify"><a href="#">Lightweight</a><br />
                The verification should be performed
                with the minimum communication and computation
                overhead.</div>
            </li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Project </span> Overview</h2>
        <p align="justify">Cloud storage is an increasingly popular application of cloud computing, which can provide on-demand outsourcing
          data services for both organizations and individuals. However, users may not fully trust the cloud service providers (CSPs) in
          that it is difficult to determine whether the CSPs meet their legal expectations for data security. Therefore, it is critical to develop
          efficient auditing techniques to strengthen data owners' trust and confidence in cloud storage.cloud storage.</p>
        <p align="justify"> In this, we present a novel
          public auditing scheme for secure cloud storage based on dynamic hash table (DHT), which is a new two-dimensional data
          structure located at a third parity auditor (TPA) to record the data property information for dynamic auditing. Differing from the
          existing works, the proposed scheme migrates the authorized information from the CSP to the TPA, and thereby significantly
          reduces the computational cost and communication overhead. Meanwhile, exploiting the structural advantages of the DHT, our
          scheme can also achieve higher updating efficiency than the state-of-the-art schemes.</p>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">TMKS Infotech </a>.</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
