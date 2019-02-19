<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration</title>

	<!-- Bootstrap -->
   
	<script src="js/AJAX.js" language="javascript" type="text/javascript"></script>
    <!-- Bvalidator Style -->
    <link href="bvalidation/themes/bvalidator.theme.bootstrap.rc.css" rel="stylesheet">

</head>

<body>
<?php 
include_once("inc/connection.php");
$obj=new connection();
$obj->connect();
?>
<!--<form id="form1" name="form1" method="post" action="action/register.php">
  <table width="50%" border="1" align="center" cellpadding="5">
    <tr>
      <td align="left">
      <input name="txtfname" type="text" id="txtfname" size="25" placeholder="First name" required="required"/>&nbsp;&nbsp;
      <input name="txtlname" type="text" id="txtlname" size="25" placeholder="Last name" required="required"/></td>
    </tr>
    <tr>
      <td align="left">
      <input name="txtemail" type="email" id="txtemail" placeholder="Email address" size="52" onchange="check_email(this.value)" onkeyup="check_email(this.value)" required="required"/>
      <span id="hint"></span>
      
      </td>
    </tr>
    <tr>
      <td align="left">
      <input name="txtphone" type="text" id="txtphone" placeholder="Mobile number" size="52" onchange="check_phone(this.value)" onkeyup="check_phone(this.value)" required="required"/>
      <span id="phone_hint"></span>
      </td>
    </tr>
    <tr>
      <td height="69" align="left">
      <textarea name="txtaddress" id="txtaddress" cols="50" rows="3" placeholder="Address"></textarea></td>
    </tr>
    <tr>
      <td align="left">
      <select name="drpstate" id="drpstate" onchange="show_city(this.value)">
    	<option value="0">--select state--</option>
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
      </td>
    </tr>
    <tr>
    	<td>
        <select name="drpcity" id="drpcity">
        	<option value="0">--select city--</option>
        </select>
        </td>
    </tr>
    <tr>
      <td align="left"><input name="txtpassword" type="password" id="txtpassword" size="52" placeholder="Password"/></td>
    </tr>
    <tr>
      <td align="left"><input name="txtconfirm" type="password" id="txtconfirm" size="52" placeholder="Confirm Password"/></td>
    </tr>
    <tr>
    	<td align="left">
      	<select name="drpque" id="drpque">
    	<option value="0">--select security question--</option>
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
      </td>
    </tr>
    <tr>
    	<td>
        	<input type="text" name="txtsec_ans" placeholder="your answer" required="required"/>
        </td>
    </tr>
    <tr>
      <td align="left"><input type="submit" name="register" id="register" value="register" />
      <input type="reset" name="btnclear" id="button" value="clear" /></td>
    </tr>
    
  </table>
</form>-->
<body>
    <div class="container body">
      <div class="main_container">
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Registration</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Registration</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                <!-- Smart Wizard -->
                <p>This is the basic information required for your registration, please fill it carefully.</p>
				<form class="form-horizontal form-label-left" id="frmregistration" action="index.php" method="post" enctype="multipart/form-data">
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>Personal information</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>Login details</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>Step 3 description</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                              Step 4<br />
                                              <small>Step 4 description</small>
                                          </span>
                          </a>
                        </li>
                      </ul>
                      
                      <div id="step-1">
                      	<h2 class="StepTitle">Personal details</h2>
                        

                          
                      </div>
                      <div id="step-2">
                        <h2 class="StepTitle">Login details</h2>
                        
                      </div>
                      <div id="step-3">
                        <h2 class="StepTitle">Step 3 Content</h2>
                        <p>
                          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
                          eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                      </div>
                      <div id="step-4">
                        <h2 class="StepTitle">Step 4 Content</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                          Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                      </div>
                    </div>
                    
					</form>
                    <!-- End SmartWizard Content -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
	<!-- Bvalidator Style -->
	<script src="bvalidation/jquery.bvalidator.js"></script>
    <script  src="bvalidation/jquery.bvalidator-yc.js"></script>
    
    <script type="text/javascript">            
        var $j = jQuery.noConflict()
        var optionsBootstrap = {
            classNamePrefix: 'bvalidator_bootstraprc_',
            position: {x:'right', y:'center'},
            offset:     {x:15, y:0},
            template: '<div class="{errMsgClass}"><div class="bvalidator_bootstraprc_arrow"></div><div class="bvalidator_bootstraprc_cont1">{message}</div></div>',    
            templateCloseIcon: '<div style="display:table"><div style="display:table-cell">{message}</div><div style="display:table-cell"><div class="{closeIconClass}">&#215;</div></div></div>'
        };
        
        $j(document).ready(function () {
            $j('#frmregistration').bValidator(optionsBootstrap);
        });
        
        
    </script>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="js/jquery.smartWizard.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>

    <!-- jQuery Smart Wizard -->
    <script>
      $(document).ready(function() {
        $('#wizard').smartWizard();

        $('#wizard_verticle').smartWizard({
          transitionEffect: 'slide'
        });
		
		$('.buttonPrevious').addClass('btn btn-primary');
        $('.buttonNext').addClass('btn btn-success');
        $('.buttonFinish').addClass('btn btn-default');
      });
    </script>
    <!-- /jQuery Smart Wizard -->
    
    
  </body>

</html>