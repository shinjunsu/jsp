package com.codingbox.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc3")
public class MyServlet7 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws ServletException, IOException {
		
		// application 저장소 선언
		ServletContext application 
					= arg0.getServletContext();
		
		String value_ = arg0.getParameter("value");
		String op = arg0.getParameter("operator");
		
		PrintWriter out = arg1.getWriter();
		int value = 0;
		
		if(!value_.equals("")) {
			 value = Integer.parseInt(value_);
		}
		
		if( op.equals("=") ) {
			// 계산
			int x = (Integer)application.getAttribute("value");
			int y = value;
			String operator = (String)application.getAttribute("op");
			
			int result = 0;
			
			if(operator.equals("+")) {
				result = x + y;
			} else {
				result = x - y;
			}
			
			out.printf("결과값 : %d", result);
		} else {
			// application 값 저장
			application.setAttribute("value", value);
			application.setAttribute("op", op);
		}
		
		
		
	}
	
}










