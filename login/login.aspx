<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
    <!--Google Fonts-->

</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        
	<div class="login-top">
		<h1>LOGIN</h1>
		<asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
	    <div class="forgot">
	    	<!--<a href="#">forgot Password</a>-->
	    	<!--<input type="submit" value="Login" />-->
            <asp:Button ID="login" runat="server" Text="Login" onclick="login_Click" />

	    </div>
	</div>
	<div class="login-bottom">
		<h3>New User &nbsp;<a href="signup.aspx">Register</a>&nbsp Here</h3>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	</div>
</div>	
<div class="copyright">
	<p>Login in to <a href="#"> SHOP </a></p>
</div>

    </form>
</body>
</html>
