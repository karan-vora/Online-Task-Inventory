<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

</head>

<body>

<form id="form1" name="form1" method="post" action="action/register.php">
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
</form>
</body>
</html>