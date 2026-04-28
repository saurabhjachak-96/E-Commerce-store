<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.store.db.DBConnection" %>

<html>

<head>

<title>Your Cart</title>

<style>

/* background */

body{
margin:0;
font-family:Segoe UI;

background-image:url("https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da");
background-size:cover;
background-attachment:fixed;
}

/* overlay */

.overlay{
background:rgba(0,0,0,0.6);
min-height:100vh;
padding:40px;
}

/* cart container */

.cart-container{
background:white;
padding:30px;
border-radius:10px;
max-width:800px;
margin:auto;
box-shadow:0 10px 20px rgba(0,0,0,0.4);
}

/* title */

h2{
text-align:center;
}

/* cart item */

.cart-item{
display:flex;
align-items:center;
justify-content:space-between;
border-bottom:1px solid #ddd;
padding:15px;
}

.cart-item img{
width:80px;
height:80px;
object-fit:cover;
border-radius:6px;
}

/* total */

.total{
font-size:22px;
font-weight:bold;
text-align:right;
margin-top:20px;
}

/* checkout button */

.checkout{
display:block;
margin-top:20px;
padding:12px;
background:#ff9800;
color:white;
text-align:center;
text-decoration:none;
border-radius:6px;
font-size:18px;
}
.remove-btn{

padding:6px 12px;

border:none;

background:#e74c3c;

color:white;

border-radius:5px;

cursor:pointer;

font-size:14px;

}

.remove-btn:hover{

background:#c0392b;

}

.checkout:hover{
background:#e68900;
}

</style>

</head>

<body>

<div class="overlay">

<div class="cart-container">

<h2>Your Shopping Cart</h2>

<%

ArrayList<Integer> cart = (ArrayList<Integer>) session.getAttribute("cart");

double total = 0;

if(cart != null && !cart.isEmpty()){

Connection con = DBConnection.getConnection();

for(Integer id : cart){

PreparedStatement ps = con.prepareStatement(
"select * from products where id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

if(rs.next()){

double price = rs.getDouble("price");
total += price;

%>

<div class="cart-item">

<img src="<%=rs.getString("image")%>">

<div>

<b><%=rs.getString("name")%></b><br>

$ <%=price%>

</div>

<form action="RemoveFromCartServlet" method="post">

<input type="hidden" name="productId" value="<%=rs.getInt("id")%>">

<button class="remove-btn">
Remove
</button>

</form>

</div>

<%
}

}

}else{

%>

<p style="text-align:center;">Your cart is empty</p>

<%

}

%>

<div class="total">

Total: $<%=total%>

</div>

<a href="Checkout.jsp" class="checkout">
Proceed to Checkout
</a>

</div>

</div>

</body>

</html>