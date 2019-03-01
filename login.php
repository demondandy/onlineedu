<?php
  //Start session
  session_start();
  
  //Connect to mysql server
  include('connect.php');
  
  //Function to sanitize values received from the form. Prevents SQL injection
  function clean($str) {
    $str = @trim($str);
    if(get_magic_quotes_gpc()) {
      $str = stripslashes($str);
    }
    return mysql_real_escape_string($str);
  }
  
  //Sanitize the POST values
  $login = clean($_POST['id']);
  $password = clean($_POST['password']);
  $result = mysql_query("SELECT * FROM user WHERE idnumber='$login' AND password='$password'");
  while($row = mysql_fetch_array($result))
    {
    $position = $row['position'];
    }
  if ($position=='admin')
  {
    //Create query
    $qry="SELECT * FROM admin WHERE idnum='$login' AND password='$password'";
    $result=mysql_query($qry);
    //while($row = mysql_fetch_array($result))
  //  {
  //  $level=$row['position'];
  //  }
    //Check whether the query was successful or not
    if($result) {
      if(mysql_num_rows($result) > 0) {
        //Login Successful
        session_regenerate_id();
        $member = mysql_fetch_assoc($result);
        $_SESSION['SESS_MEMBER_ID'] = $member['id'];
        session_write_close();
        //if ($level="admin"){
        header("location: admin/index.php");
        exit();
      }else {
        //Login failed
        header("location: index.html");
        exit();
      }
    }else {
      die("Query failed");
    }
  }
  if ($position =='student')
  {
    //Create query
    $qry="SELECT * FROM student WHERE idnumber='$login' AND password='$password'";
    $result=mysql_query($qry);
    //while($row = mysql_fetch_array($result))
  //  {
  //  $level=$row['position'];
  //  }
    //Check whether the query was successful or not
    if($result) {
      if(mysql_num_rows($result) > 0) {
        //Login Successful
        session_regenerate_id();
        $member = mysql_fetch_assoc($result);
        $_SESSION['SESS_MEMBER_ID'] = $member['id'];
        $_SESSION['SESS_FIRST_NAME'] = $member['course'];
        session_write_close();
        //if ($level="admin"){
        header("location: student/index.php");
        exit();
      }else {
        //Login failed
        header("location: index.html");
        exit();
      }
    }else {
      die("Query failed");
    }
  }
  if ($position=='teacher')
  {
    //Create query
    $qry="SELECT * FROM teacher WHERE idnumber='$login' AND password='$password'";
    $result=mysql_query($qry);
    //while($row = mysql_fetch_array($result))
  //  {
  //  $level=$row['position'];
  //  }
    //Check whether the query was successful or not
    if($result) {
      if(mysql_num_rows($result) > 0) {
        //Login Successful
        session_regenerate_id();
        $member = mysql_fetch_assoc($result);
        $_SESSION['SESS_MEMBER_ID'] = $member['id'];
        $_SESSION['SESS_FIRST_NAME'] = $member['idnumber'];
        session_write_close();
        //if ($level="admin"){
        header("location: teacher/profile.php");
        exit();
      }else {
        //Login failed
        header("location: index.html");
        exit();
      }
    }else {
      die("Query failed");
    }
  }
?>