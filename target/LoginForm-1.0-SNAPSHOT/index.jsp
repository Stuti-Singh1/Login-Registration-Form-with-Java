<%-- 
    Document   : loginForm
    Created on : 15 Aug, 2022, 1:11:01 AM
    Author     : Stuti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up/in Page</title>
        <%@include file = "components/common_css_js.jsp" %> 
        <link rel="stylesheet" href="css/loginForm.css" />
        <script src="js/loginForm.js" defer></script>
    </head>
    <body>
        
<h2>Sign in/up Form</h2>
<div class="container" id="container">
	<div class="form-container sign-up-container">
            <form action="CustomerRegisServlet" method="post">
			<h1>Create Account</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fa-brands fa-facebook"></i></a>
				<a href="#" class="social"><i class="fa-brands fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fa-brands fa-linkedin-in"></i></a>
			</div>
			<span>or use your email for registration</span>
                        <input type="text" placeholder="Name" name="username" />
			<input type="email" placeholder="Email" name="email"/>
			<input type="password" placeholder="Password" name="password"/>
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
            <form action="CustomerLoginServlet" method="post">
			<h1>Sign in</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>or use your account</span>
			<input type="email" placeholder="Email" name="email"/>
                        <input type="password" placeholder="Password" name="password" />
			<a href="#">Forgot your password?</a>
			<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

    </body>
</html>
