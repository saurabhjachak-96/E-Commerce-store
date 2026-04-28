package com.store.servlet;

import java.io.IOException;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.store.db.DBConnection;

@WebServlet("/BuyServlet")

public class BuyServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int id = Integer.parseInt(request.getParameter("id"));

Connection con = DBConnection.getConnection();

try{

PreparedStatement ps = con.prepareStatement(
"select * from products where id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

if(rs.next()){

String name = rs.getString("name");
double price = rs.getDouble("price");
String image = rs.getString("image");

/* quantity */

int quantity = 1;

/* total price */

double total = price * quantity;

/* create order object */

Map<String,Object> order = new HashMap<>();

order.put("id",id);
order.put("name",name);
order.put("price",price);
order.put("image",image);
order.put("quantity",quantity);
order.put("total",total);

/* store order in session */

HttpSession session = request.getSession();

session.setAttribute("order", order);

}

/* redirect to checkout */

response.sendRedirect("Checkout.jsp");

}catch(Exception e){
e.printStackTrace();
}

}

}