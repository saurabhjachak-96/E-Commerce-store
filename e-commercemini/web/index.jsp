<html>
<head>
<title>Mini E-Commerce Store</title>

<style>

/* ===== RESET ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial, sans-serif;
}

/* ===== BODY BACKGROUND ===== */

body{
height:100vh;
background-image:url("https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da");
background-size:cover;
background-position:center;
background-attachment:fixed;
}


/* ===== NAVBAR ===== */

.navbar{

width:100%;
display:flex;
justify-content:space-between;
align-items:center;

padding:20px 60px;

background:rgba(0,0,0,0.6);
backdrop-filter:blur(10px);

color:white;
}

.logo{
font-size:30px;
font-weight:bold;
letter-spacing:2px;
}

.nav-links{
display:flex;
gap:25px;
}

.nav-item{
padding:8px 18px;
border-radius:6px;
transition:0.3s;
}

.nav-item a{
color:white;
text-decoration:none;
font-size:18px;
}

.nav-item:hover{
background:#ff9800;
}


/* ===== HERO SECTION ===== */

.hero{

height:70vh;

display:flex;
flex-direction:column;
justify-content:center;
align-items:center;

text-align:center;

color:white;

background:rgba(0,0,0,0.5);

}

.hero h1{
font-size:65px;
margin-bottom:15px;
text-shadow:3px 3px 10px black;
}

.hero p{
font-size:22px;
margin-bottom:40px;
}

/* ===== BUTTON AREA ===== */

.buttons{

display:flex;
gap:30px;
flex-wrap:wrap;
justify-content:center;

}

.button-box{

background:white;

padding:20px 35px;

border-radius:12px;

box-shadow:0 10px 20px rgba(0,0,0,0.4);

transition:0.3s;

}

.button-box a{

text-decoration:none;

font-size:20px;

font-weight:bold;

color:#333;

}

.button-box:hover{

transform:translateY(-8px);
background:#ff9800;

}

.button-box:hover a{

color:white;

}


/* ===== FEATURES SECTION ===== */

.features{

display:flex;
justify-content:center;
gap:40px;

padding:70px;

background:white;

}

.feature-card{

width:260px;

text-align:center;

padding:25px;

border-radius:12px;

box-shadow:0 8px 15px rgba(0,0,0,0.15);

transition:0.3s;

}

.feature-card:hover{

transform:scale(1.05);

}

.feature-card h3{

margin-bottom:10px;

color:#333;

}

.feature-card p{

color:#666;

}


/* ===== FOOTER ===== */

.footer{

background:#111;

color:white;

padding:40px;

display:flex;
justify-content:space-around;

}

.footer-section{

width:250px;

}

.footer-section h3{

margin-bottom:15px;
border-bottom:2px solid #ff9800;
padding-bottom:5px;

}

.footer-section a{

display:block;
color:#ccc;
text-decoration:none;
margin:6px 0;

}

.footer-section a:hover{

color:#ff9800;

}

.bottom{

text-align:center;
background:black;
color:#aaa;
padding:12px;

}

</style>
</head>


<body>


<!-- ===== NAVBAR ===== -->

<div class="navbar">

<div class="logo">
 MiniStore
</div>

<div class="nav-links">

<div class="nav-item">
<a href="Products.jsp">Products</a>
</div>

<div class="nav-item">
<a href="Cart.jsp">Cart</a>
</div>

<div class="nav-item">
<a href="Login.jsp">Login</a>
</div>

<div class="nav-item">
<a href="Register.jsp">Register</a>
</div>

</div>

</div>


<!-- ===== HERO SECTION ===== -->

<div class="hero">

<h1>Mini E-Commerce Store</h1>

<p>Shop the best products at the best prices</p>

<div class="buttons">

<div class="button-box">
<a href="Products.jsp">View Products</a>
</div>

<div class="button-box">
<a href="Cart.jsp">View Cart</a>
</div>

<div class="button-box">
<a href="Login.jsp">Login</a>
</div>

<div class="button-box">
<a href="Register.jsp">Register</a>
</div>

</div>

</div>



<!-- ===== FEATURES ===== -->

<div class="features">

<div class="feature-card">
<h3>Fast Delivery</h3>
<p>We deliver products quickly and safely to your door.</p>
</div>

<div class="feature-card">
<h3>Secure Payment</h3>
<p>Your transactions are protected and encrypted.</p>
</div>

<div class="feature-card">
<h3>Best Products</h3>
<p>We offer high-quality items at affordable prices.</p>
</div>

</div>



<!-- ===== FOOTER ===== -->

<div class="footer">

<div class="footer-section">

<h3>Mini Store</h3>

<p>Your one stop destination for shopping.</p>

</div>

<div class="footer-section">

<h3>Quick Links</h3>

<a href="Products.jsp">Products</a>
<a href="Cart.jsp">Cart</a>
<a href="Login.jsp">Login</a>
<a href="Register.jsp">Register</a>

</div>

<div class="footer-section">

<h3>Contact</h3>

<p>Email: gauravmahadik294@gmail.com</p>
<p>Phone: +91 9876543210</p>

</div>

</div>

<div class="bottom">
© 2026 Mini Store | All Rights Reserved
</div>

</body>
</html>