package com.codingbox.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cnt")
public class MyServlet2 extends HttpServlet{

	@Override 
	protected void service(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws ServletException, IOException {
		arg1.setCharacterEncoding("UTF-8");
		arg1.setContentType("text/html; charset=UTF-8");
		
		int count = 100;
		String paramCnt = arg0.getParameter("count");
		
		if( paramCnt != null && !paramCnt.equals("") ) {
			count = Integer.parseInt(paramCnt);
		}

		PrintWriter out = arg1.getWriter();
		for( int i = 0; i<count; i++ ) {
			out.println((i + 1) + " : 안녕 servlet<br>");
		}
	}
}

















