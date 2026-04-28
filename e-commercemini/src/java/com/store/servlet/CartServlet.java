package com.store.servlet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/CartServlet")

public class CartServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int productId = Integer.parseInt(request.getParameter("productId"));

HttpSession session = request.getSession();

ArrayList<Integer> cart = (ArrayList<Integer>) session.getAttribute("cart");

if(cart == null){
cart = new ArrayList<>();
}

cart.add(productId);

session.setAttribute("cart", cart);

response.sendRedirect("Cart.jsp");

}
}