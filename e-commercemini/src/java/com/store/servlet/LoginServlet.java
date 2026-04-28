package com.store.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String username = request.getParameter("email");
String password = request.getParameter("password");

if(username.equals("admin") && password.equals("admin")){
response.sendRedirect("Products.jsp");
}else{
response.getWriter().println("Invalid login");
}

}
}