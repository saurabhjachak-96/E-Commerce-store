<%@page import="java.sql.*"%>
<%@page import="com.store.db.DBConnection"%>

<html>
<head>
<title>Products - Mini Store</title>

<style>

/* ===== GLOBAL ===== */

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI, Arial;
}

/* ===== BODY ===== */

body{
background:#f4f6f9;
}

body{
height:100vh;
background-image:url("https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da");
background-size:cover;
background-position:center;
background-attachment:fixed;
}
/* ===== NAVBAR ===== */

.navbar{

background:#111;
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

/* ===== PAGE TITLE ===== */

.title{

text-align:center;

font-size:50px;

padding:40px;
color: white;
font-weight: bold;

}

/* ===== PRODUCT GRID ===== */

.products{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(260px,1fr));

gap:30px;

padding:40px;

}

/* ===== PRODUCT CARD ===== */

.product-card{

background:white;

border-radius:12px;

box-shadow:0 8px 18px rgba(0,0,0,0.15);

overflow:hidden;

transition:0.3s;

}

.product-card:hover{

transform:translateY(-10px);

}

/* PRODUCT IMAGE */

.product-image img{

width:100%;
height:220px;
object-fit:cover;

}

/* PRODUCT INFO */

.product-info{

padding:20px;

}

.product-info h3{

margin-bottom:10px;

}

.product-info p{

color:#555;

margin-bottom:10px;

font-size:14px;

}

.price{

font-size:20px;

font-weight:bold;

color:#27ae60;

margin-bottom:15px;

}

/* ===== BUTTONS ===== */

.buttons{

display:flex;

gap:10px;

}

.btn{

padding:8px 15px;

border:none;

border-radius:6px;

cursor:pointer;

font-weight:bold;

}

.cart-btn{

background:#ff9800;

color:white;

}

.buy-btn{

background:#2ecc71;

color:white;

}

.cart-btn:hover{
background:#e68900;
}

.buy-btn:hover{
background:#27ae60;
}

/* ===== FOOTER ===== */

.footer{

margin-top:40px;

background:#111;

color:white;

text-align:center;

padding:20px;

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
<a href="Cart.jsp">Cart</a>
<a href="Login.jsp">Login</a>

</div>

</div>


<div class="title">
Our Products
</div>


<!-- PRODUCT SECTION -->

<div class="products">

<%

Connection con = DBConnection.getConnection();

if(con == null){

out.println("Database connection failed");

}else{

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from products");

while(rs.next()){

%>

<div class="product-card">

<div class="product-image">
<img src="<%=rs.getString("image")%>">
</div>

<div class="product-info">

<h3><%=rs.getString("name")%></h3>

<p><%=rs.getString("description")%></p>

<div class="price">
$ <%=rs.getDouble("price")%>
</div>

<div class="buttons">

<form action="CartServlet" method="post">

<input type="hidden" name="productId" value="<%=rs.getInt("id")%>">

<button class="btn cart-btn">
Add to Cart
</button>

</form>

<form action="BuyServlet" method="post">

<input type="hidden" name="id" value="<%=rs.getInt("id")%>">

<button class="btn buy-btn">
Buy Now
</button>

</form>

</div>

</div>

</div>

<%
}

}
%>

</div>


<div class="footer">

© 2026 Mini Store | All Rights Reserved

</div>

</body>
</html>