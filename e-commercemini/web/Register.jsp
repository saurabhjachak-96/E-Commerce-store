<%@ page import="java.sql.*" %>
<%@ page import="com.store.db.DBConnection" %>

<html>
<head>

<title>Register - Mini Store</title>

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial;
}

/* ===== BACKGROUND ===== */

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

/* ===== CENTER CONTAINER ===== */

.container{

height:80vh;

display:flex;

justify-content:center;

align-items:center;

}

/* ===== REGISTER BOX ===== */

.register-box{

width:380px;

background:rgba(255,255,255,0.15);

backdrop-filter:blur(10px);

padding:40px;

border-radius:12px;

box-shadow:0 8px 20px rgba(0,0,0,0.4);

color:white;

}

/* ===== TITLE ===== */

.register-box h2{

text-align:center;

margin-bottom:25px;

}

/* ===== INPUT FIELDS ===== */

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

/* ===== BUTTON ===== */

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

/* ===== LOGIN LINK ===== */

.login{

text-align:center;

margin-top:15px;

}

.login a{

color:#ffcc80;

text-decoration:none;

}

.login a:hover{

text-decoration:underline;

}

/* ===== SUCCESS MESSAGE ===== */

.success{

margin-top:15px;

text-align:center;

color:#90ee90;

font-weight:bold;

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
? MiniStore
</div>

<div class="nav-links">

<a href="index.jsp">Home</a>
<a href="Products.jsp">Products</a>
<a href="Login.jsp">Login</a>

</div>

</div>


<!-- REGISTER FORM -->

<div class="container">

<div class="register-box">

<h2>User Registration</h2>

<form method="post">

<div class="input-box">
<input type="text" name="name" placeholder="Enter Name" required>
</div>

<div class="input-box">
<input type="text" name="email" placeholder="Enter Email" required>
</div>

<div class="input-box">
<input type="password" name="password" placeholder="Enter Password" required>
</div>

<input type="submit" value="Register" class="btn">

</form>

<div class="login">

<p>Already have an account?  
<a href="Login.jsp">Login Here</a></p>

</div>

<%

if(request.getMethod().equals("POST")) {

String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = DBConnection.getConnection();

PreparedStatement ps = con.prepareStatement(
"insert into users(name,email,password) values(?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);

ps.executeUpdate();

%>

<div class="success">
Registration Successful
</div>

<%

}

%>

</div>

</div>


<!-- FOOTER -->

<div class="footer">

© 2026 Mini Store | All Rights Reserved

</div>

</body>
</html>