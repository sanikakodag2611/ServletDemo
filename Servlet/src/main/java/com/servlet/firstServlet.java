package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class firstServlet extends HttpServlet {
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int num1=Integer.parseInt(request.getParameter("f1"));
		 int num2=Integer.parseInt(request.getParameter("f2"));
		 int c=num1+num2;
		 
		 PrintWriter out=response.getWriter();
		 out.print("Sum of two number "+num1+" and "+num2+" = " +c);
	}

}                                                                                                                                                           