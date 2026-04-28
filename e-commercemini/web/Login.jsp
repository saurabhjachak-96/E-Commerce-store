<html>

<head>
<title>Login - Mini Store</title>

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial;
}

/* ===== BODY BACKGROUND ===== */

body{

height:100vh;

background-image:url("https://images.unsplash.com/photo-1556742031-c6961e8560b0");

background-size:cover;

background-position:center;

}

/* ===== NAVBAR ===== */

.navbar{

background:rgba(0,0,0,0.7);

color:white;

display:flex;
justify-content:space-between;
align-items:center;

padding:20px 60px;

}

.logo{

font-size:28px;
font-weight:bold;

}

.nav-links{

display:flex;
gap:25px;

}

.nav-links a{

text-decoration:none;
color:white;
font-size:18px;

}

.nav-links a:hover{

color:#ff9800;

}

/* ===== LOGIN SECTION ===== */

.container{

height:80vh;

display:flex;

justify-content:center;

align-items:center;

}

/* LOGIN CARD */

.login-box{

width:350px;

background:rgba(255,255,255,0.15);

backdrop-filter:blur(10px);

padding:40px;

border-radius:12px;

box-shadow:0 8px 20px rgba(0,0,0,0.4);

color:white;

}

/* TITLE */

.login-box h2{

text-align:center;

margin-bottom:25px;

}

/* INPUT FIELDS */

.input-box{

margin-bottom:20px;

}

.input-box input{

width:100%;

padding:10px;

border:none;

border-radius:6px;

font-size:16px;

}

/* BUTTON */

.btn{

width:100%;

padding:10px;

border:none;

border-radius:6px;

background:#ff9800;

color:white;

font-size:18px;

cursor:pointer;

transition:0.3s;

}

.btn:hover{

background:#e68900;

}

/* REGISTER LINK */

.register{

text-align:center;

margin-top:15px;

}

.register a{

color:#ffcc80;

text-decoration:none;

}

.register a:hover{

text-decoration:underline;

}

/* ===== FOOTER ===== */

.footer{

background:#111;

color:white;

text-align:center;

padding:15px;

}

</style>

</head>


<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">
 MiniStore
</div>

<div class="nav-links">

<a href="index.jsp">Home</a>
<a href="Products.jsp">Products</a>
<a href="Register.jsp">Register</a>

</div>

</div>


<!-- LOGIN FORM -->

<div class="container">

<div class="login-box">

<h2>Login</h2>

<form action="LoginServlet" method="post">

<div class="input-box">

<input type="text" name="email" placeholder="Enter Email" required>

</div>

<div class="input-box">

<input type="password" name="password" placeholder="Enter Password" required>

</div>

<input type="submit" value="Login" class="btn">

</form>

<div class="register">

<p>Don't have an account?  
<a href="Register.jsp">Register Here</a></p>

</div>

</div>

</div>


<!-- FOOTER -->

<div class="footer">

© 2026 Mini Store | All Rights Reserved

</div>

</body>

</html>