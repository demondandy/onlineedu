<?php
  //Start session
  session_start();
  
  //Unset the variables stored in session
  unset($_SESSION['SESS_MEMBER_ID']);
  unset($_SESSION['SESS_FIRST_NAME']);
  unset($_SESSION['SESS_LAST_NAME']);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Welcome To Open University</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="sty.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.ed{
border-style:solid;
border-width:thin;
border-color:#00CCFF;
padding:5px;
margin-bottom: 4px;
}
#button1{
text-align:center;
font-family:Arial, Helvetica, sans-serif;
border-style:solid;
border-width:thin;
border-color:#00CCFF;
padding:5px;
background-color:#00CCFF;
height: 34px;
}
-->
</style>

</head>
<body>
<div id="header_wrapper">
  <div id="header">
    <div id="site_title">
      <h1><a href="#"> <img src="images/logo.png" alt="" /> <span>Effective and Efficient</span> </a></h1>
    </div>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, ipsum bibendum pretium volutpat, diam magna facilisis ante.</p>
  </div>
  <!-- end of header -->
</div>
<!-- end of menu_wrapper -->
<div id="menu_wrapper">
  <div id="menu">
    <ul>
      <li><a href="index.html" class="current">Home</a></li>
      


    </ul>
  </div>
  <!-- end of menu -->
</div>
<div id="content_wrapper">
  
  <!-- end of sidebar -->
  <div id="content">
    <div class="content_box">
      <h2>Student Portal</h2>
      
      <div class="cleaner_h20"></div>
      <div class="image_fl"> <img src="images/images01.jpg" alt="" /> </div>
      <div class="section_w250 float_r">
        <!-- For Inputs Here 

          for login inputs here.

        -->

        <form action="login.php" method="post">
    I.D. Number<br>
    
    <input type="text" name="id" class="ed"><br>
    Password<br>
    <input type="password" name="password" class="ed"><br>
    <input type="submit" value="Login" id="button1">
    </form>
      </div>
      <div class="cleaner"></div>
    </div>
    
    <div class="content_box_bottom"></div>
  </div>
  <!-- end of content -->
  <div class="cleaner"></div>
</div>
<div id="footer_wrapper">
  <div id="footer">
    <ul class="footer_menu">
      <li><a href="#">Home</a></li>
      <li><a href="#">Application</a></li>
      <li><a href="#">Alumni</a></li>
      <li><a href="#">Gallery</a></li>
      <li><a href="loginform.php">Members</a></li>
      <li class="last_menu"><a href="#">Contact Us</a></li>
    </ul>
    Copyright &copy; <a href="#">Open University 2018</a> | Designed by <a target="_blank" rel="nofollow" href="#">Okpani Juliet</a></div>
</body>
</html>
