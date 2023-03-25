package com.codingbox.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class MyServlet5 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws ServletException, IOException {
		
		int x = Integer.parseInt( arg0.getParameter("x"));
		int y = Integer.parseInt( arg0.getParameter("y"));
		String op = arg0.getParameter("operator");
		
		int result = 0;
		if( op.equals("덧셈") ) {
			result = x + y;
		} else {
			result = x - y;
		}
				
		arg1.getWriter().println("result is " + result);
	}
}










