<?php 
	session_start();
	include_once("inc/connection.php");
	$obj=new connection();
	$obj->connect();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
</head>

<body>
<br />
<h2 align="center" >LOGIN</h2>
<form action="action/verify-login.php" method="post" name="frm">
  <!-- <div class="form-group">
       <input type="email" class="form-control" placeholder="Email" name="txtusername" required>
       <p class="help-block text-danger"></p>
  </div>

  <div class="form-group">
       <input type="password" class="form-control" placeholder="Password" name="txtpassword" required>
       <p class="help-block text-danger"></p>
  </div>

  <div class="clearfix"></div>
            <div class="col-lg-12 text-center">
              <div id="success"></div>
              <button type="submit" name="btnlogin"> Login</button>
            </div> -->

<table width="50%" border="1" align="center" cellpadding="5">
  <tr>
    <td >Username</td>
    <td >
      <input type="email" name="txtusername" placeholder="Email"/>
    </td>
  </tr>
  <tr>
    <td>Password</td>
    <td>
      <input type="password" name="txtpassword" placeholder="Password"/></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" name="btnlogin" value="Login" /></td>
    </tr>
</table>
</form>
<br /><br />
<div align="center">
<a href="index.php?page=forgot-password.php">Forgot Password?</a>
</div>

</body>
</html>