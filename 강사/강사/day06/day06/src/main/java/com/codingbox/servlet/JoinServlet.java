package com.codingbox.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingbox.dao.UserDao;
import com.codingbox.vo.RegitVo;

public class JoinServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String username = request.getParameter("username");
		String userphone = request.getParameter("userphone");
		
		RegitVo rVo = new RegitVo();
		rVo.setUserid(userid);
		rVo.setUsername(username);
		rVo.setUserpw(userpw);
		rVo.setUserphone(userphone);
		UserDao udao = new UserDao();
		boolean check = udao.join(rVo);
		
		if(check){
		// 회원가입 성공시
			
		}else {
		// 회원가입 실패시
			
		}
		
	}
}










