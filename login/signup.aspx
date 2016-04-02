<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="login_signup" %>

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
    <asp:ScriptManager runat="server" ID="scriptmngr1">
    </asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="update">
        <ContentTemplate>
        
        
    <div class="login">
        <h2>Sign Up</h2>
        <div class="login-top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ErrorMessage="*" Style="Color:red" float="left" ControlToValidate="name"></asp:RequiredFieldValidator>
            <asp:TextBox ID="name" runat="server" placeholder="Name" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Style="Color:red" ControlToValidate="gender"></asp:RequiredFieldValidator>
            <asp:TextBox ID="gender" runat="server" placeholder="Male/Female" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Style="Color:red"  ControlToValidate="address"></asp:RequiredFieldValidator>
		    <asp:TextBox ID="address" runat="server" placeholder="Address" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Style="Color:red"  ControlToValidate="username"></asp:RequiredFieldValidator>
            <asp:TextBox ID="username" runat="server" placeholder="Username" AutoPostBack="true" OnTextChanged="username_TextChanged1"></asp:TextBox >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Style="Color:red"  ControlToValidate="password"></asp:RequiredFieldValidator>
            <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Style="Color:red"  ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:TextBox ID="email" runat="server" placeholder="e-mail Id" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" Style="Color:red"  ControlToValidate="mobile"></asp:RequiredFieldValidator>
            <asp:TextBox ID="mobile" runat="server" placeholder="Phone no."></asp:TextBox>
	    </div>
	    <div class="login-bottom">
            <div class="forgot">
		        <asp:Button ID="save" runat="server" Text="Save" CssClass="btn" OnClick="save_Click"/>
                <asp:Label ID="lblmsg" runat="server" Text="" ></asp:Label><br />
            </div>
	    </div>
    </div>	
    <div class="copyright">
	    <p>Login in to <a href="../Home.aspx"> Equilibrium </a></p>
    </div> 
    </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
