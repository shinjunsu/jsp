package com.codingbox.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regit")
public class MyServlet4 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws ServletException, IOException {
		
//		arg0.setCharacterEncoding("UTF-8");
//		
//		arg1.setCharacterEncoding("UTF-8");
//		arg1.setContentType("text/html; charset=UTF-8");
		
		String title = arg0.getParameter("title");
		String content = arg0.getParameter("content");
		
		PrintWriter out = arg1.getWriter();
		
		out.println(title);
		out.println(content);		
	}
}










