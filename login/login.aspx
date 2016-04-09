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
   

</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>  
	<div class="login-top">
		<h1>LOGIN</h1>
		<asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
	    <div class="forgot">
            <asp:Button ID="login" runat="server" Text="Login" onclick="login_Click" /> 
	    </div>
	</div>
	<div class="login-bottom">
		<h3>New User &nbsp;<a href="signup.aspx">Register</a>&nbsp Here</h3>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	</div>
</div>	
<div class="copyright">
	<p>Login in to <a href="../Home.aspx"> Equilibrium </a></p>
</div>

    </form>
</body>
</html>
