<%@ page import="java.util.*" %>

<html>

<head>

<title>Checkout</title>

<style>

body{
margin:0;
font-family:Segoe UI;

background-image:url("https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da");
background-size:cover;
background-attachment:fixed;
}

.overlay{
background:rgba(0,0,0,0.6);
min-height:100vh;
padding:40px;
}

.checkout-box{

background:white;
max-width:600px;
margin:auto;
padding:30px;
border-radius:10px;

}

.product{

display:flex;
align-items:center;
gap:20px;

}

.product img{

width:100px;
border-radius:8px;

}

.total{

margin-top:20px;
font-size:22px;
font-weight:bold;

}

.pay-btn{

margin-top:20px;
padding:12px;
width:100%;

background:#27ae60;
color:white;
border:none;
font-size:18px;
border-radius:6px;
cursor:pointer;

}

.pay-btn:hover{

background:#1e874b;

}

</style>

</head>

<body>

<div class="overlay">

<div class="checkout-box">

<h2>Order Summary</h2>

<%

Map<String,Object> order =
(Map<String,Object>) session.getAttribute("order");

if(order != null){

%>

<div class="product">

<img src="<%=order.get("image")%>">

<div>

<b><%=order.get("name")%></b><br>

Price: $<%=order.get("price")%><br>

Quantity: <%=order.get("quantity")%>

</div>

</div>

<div class="total">

Total: $ <%=order.get("total")%>

</div>

<button class="pay-btn">

Proceed to Payment

</button>

<%
}
%>

</div>

</div>

</body>

</html>