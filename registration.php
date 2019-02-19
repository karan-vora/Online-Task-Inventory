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
<body class="login_box">
<?php 
  include_once("inc/connection.php");
  $obj=new connection();
  $obj->connect();
?>

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
<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading" style="color:#3680C1">Registration</h2>
       
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12s">
        <form  style="margin:20px 300px;" method="post" name="frm" class="form-horizontal form-label-left" id="frmregistration" action="action/register.php" method="post" enctype="multipart/form-data">
         <h2>Candidate Registration</h2> 
         <p>This is the basic information required for your registration, please fill it carefully.</p>
         <fieldset>
                    <legend>Personal Details</legend>
                      <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtfname" type="text" id="txtfname" size="25" placeholder="First name"class="form-control col-md-7 col-xs-12" data-bvalidator="alpha,required"/>                             
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtlname" type="text" id="txtlname" size="25" placeholder="Last name" class="form-control col-md-7 col-xs-12" data-bvalidator="alpha,required"/>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="txtaddress" class="control-label col-md-3 col-sm-3 col-xs-12">Permanent Address</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <textarea name="txtaddress" id="txtaddress"  class="form-control col-md-7 col-xs-12" cols="50" rows="5" placeholder="Address"></textarea>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="drpstate" class="control-label col-md-3 col-sm-3 col-xs-12">State</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="btn btn-default dropdown-toggle col-xs-12" name="drpstate" id="drpstate" onchange="show_city(this.value)" data-bvalidator="required" data-bvalidator-msg="Select state from drop-down menu.">
                                <option value="">--select state--</option>
                                <?php 
                                    $obj->query="select * from states order by state_name";
                                    $obj->select($obj->query);
                                    while($row=mysqli_fetch_assoc($obj->result))
                                    {
                                ?>
                                        <option value="<?php echo $row["state_id"];?>"><?php echo $row["state_name"];?></option>
                                <?php 
                                    }
                                ?>
                                </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="drpcity" class="control-label col-md-3 col-sm-3 col-xs-12">City</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="btn btn-default dropdown-toggle col-xs-12" name="drpcity" id="drpcity" data-bvalidator="required" data-bvalidator-msg="Select city from drop-down menu.">
                                    <option value="">--select city--</option>
                                    <?php 
                                    $obj->query="select * from cities order by city_name";
                                    $obj->select($obj->query);
                                    while($row=mysqli_fetch_assoc($obj->result))
                                    {
                                ?>
                                        <option value="<?php echo $row["city_id"];?>"><?php echo $row["city_name"];?></option>
                                <?php 
                                    }
                                ?>
                                </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender <span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                            <label>
                                <input type="radio" class="flat" name="rdogender" value="Male"/> Male &nbsp;&nbsp;
                            <input type="radio" class="flat" name="rdogender" value="Female" data-bvalidator="required"/> Female
                                </label>
                            </div>
                          </div>
                          <div class="form-group">
                           <label  class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="date" class="form-control col-md-7 col-xs-12" name="txtdate" placeholder="Date of birth(yyyy-mm-dd)" data-bvalidator="date[yyyy-mm-dd],required"/>
                            </div>
                          </div>
                    
                    <legend>Login Details</legend>
                      <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtemail">Email address<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtemail" type="email" id="txtemail" placeholder="Email address" size="52" onchange="check_email(this.value)" onkeyup="check_email(this.value)" />
                              <span id="hint"></span>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtphone">Mobile number<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtphone" type="text" id="txtphone" placeholder="Mobile number" size="52" onchange="check_phone(this.value)" onkeyup="check_phone(this.value)" class="form-control col-md-7 col-xs-12" data-bvalidator="number,required"/>
      <span id="phone_hint"></span>
                            </div>
                          </div>
                          <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtpassword" type="password" id="txtpass1" size="52" class="form-control col-md-7 col-xs-12" placeholder="Password" data-bvalidator="required"/>
                            </div>
                          </div>
                          <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirm Password <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtconfirm" type="password" id="txtpass2" class="form-control col-md-7 col-xs-12" id="txtconfirm" size="52" placeholder="Confirm Password" onchange="check()" data-bvalidator="equalto[txtpass1],required"/>
                            </div>
                            <script>
                function check()
                {
                  var pass1=document.getElementById("txtpass1");
                  var pass2=document.getElementById("txtpass2");
                  if(pass1.value=="")
                  {
                    alert("you have not entered the password")
                    pass1.focus();
                    return false;
                  }else
                  if(pass1.value != pass2.value)
                  {
                    alert("please enter correct password!");
                    pass2.focus();
                    pass2.select();
                    return false;
                  }else
                    return true;
                }
              </script>
                          </div>
                   
                    <legend>Experience</legend>
                      <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Upload your Resume <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="file" id="fimg" class="form-control" name="fimg" data-bvalidator="required" data-bvalidator-msg="please Upload your resume."/>
                            </div>
                          </div>
                         <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Year(s) of Experience<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="btn btn-default dropdown-toggle col-xs-12" name="drpexperience" data-bvalidator="required" data-bvalidator-msg="Select your experience status">
                                    <option value="">--select--</option>
                                    <option value="1">Fresher</option>
                                    <option value="2">less than 2 years</option>
                                    <option value="3">5 years</option>
                                    <option value="4">more than 5 years</option>
                                </select>
                            </div>
                          </div> 
                    <legend>Security purpose</legend>
                      <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Your security question<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="btn btn-default dropdown-toggle col-xs-12" name="drpque" id="drpque" data-bvalidator="required" data-bvalidator-msg="Select question from the drop-down menu.">
                                    <option value="">--select security question--</option>
                  <?php 
                                        $obj->query="select * from sec_que";
                                        $obj->select($obj->query);
                                        while($row=mysqli_fetch_assoc($obj->result))
                                        {
                                    ?>
                      <option value="<?php echo $row["sec_que_id"];?>"><?php echo $row["sec_question"];?></option>
                                    <?php 
                                        }
                                    ?>
                                </select>
                            </div>
                          </div>
                          <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-12">Your answer<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input name="txtsec_ans" type="text" size="25" placeholder="your answer" class="form-control col-md-7 col-xs-12" data-bvalidator="alpha,required"/>
                            </div>
                          </div>
                          
                  </fieldset>
                  <div class="form-group">
                   <div class="col-md-6 col-sm-6 col-xs-12">
                      <input class="btn btn-success btn-round" type="submit" name="register" value="register" />
                    </div>
                  </div>
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