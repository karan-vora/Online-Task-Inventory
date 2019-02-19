<!DOCTYPE HTML>
<html>
<head>
<title>OAS</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/boot.css">
<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/css/style_common.css">
<link rel="stylesheet" type="text/css" href="assets/css/style1.css">
<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic'>
<script src="assets/js/modernizr.custom.69142.js"></script>
<script src="assets/js/jquery-1.10.1.min.js"></script>
<script src="assets/js/bootstrap.min.js" ></script>
</head>
<body>
<div id="page-top" class="index">
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
        <!-- <a class="navbar-brand page-scroll" href="#page-top">OAS</a> -->
        <img src="images1/OAS_logo1.png" height="50" width="100">
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li><a class="page-scroll" href="index.php">Home</a></li>
          <li><a class="page-scroll" href="login.php">Login</a></li>
          <li><a class="page-scroll" href="registration.php">Register</a></li>
          <!-- <li><a class="page-scroll" href="#services">Service</a></li> -->
          <li><a class="page-scroll" href="aboutus.php">About us</a></li>
          <li><a class="page-scroll" href="#contact">Contact us</a></li>
        </ul>
      </div>
    </div><!-- /.container-fluid -->
  </nav>
  <!-- Header --><!--  photo header section-->
  
</div>


<!-- About Section -->
<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading" style="color:#3680C1">Login</h2>
       
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12s">
        <form action="action/verify-login.php" style="margin:20px 300px;" method="post" name="frm">
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
            <div class="form-group">
              <label class="control-label" for="email">Username:</label>
              <input type="email" class="form-control" name="txtusername" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label class="control-label" for="pwd">Password:</label>
              <input type="password" class="form-control" name="txtpassword" placeholder="Enter password">
              
            </div>
            <div class="form-group">
              <div class="col-sm-12">
                <a href="registration.php" class="col-md-8">click here if you are not yet register</a>
                <a href="forgot-password.php" class="col-md-4">forgot password</a></br>
              </div>
            </div>
            <div class="form-group"> 
              <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" name="btnlogin" class="btn btn-default" value="Login" align="center" >
              </div>
            </div>
           <!--  <table width="50%" border="1" align="center" cellpadding="5">
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
              </table> -->
            </form>
      </div>
    </div>
  </div>
</section>


<footer style="background-color: #000000;">
  <div class="container">
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4 col-md-offset-">
        <ul class="list-inline social-buttons">
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>
  <br>
  <div class="container">
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <h3 style="color:#3680C1">Thank You For Visiting Our OAS</h3>
        <h3 style="color:#3680C1">Copyright &copy; 2016 All Rights Reserved</h3>
      </div>
      <div class="col-md-3"></div>
    </div>
  </div>
</footer>
</body>
</html>