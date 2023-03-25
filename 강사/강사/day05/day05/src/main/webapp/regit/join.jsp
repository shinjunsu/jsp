<%@page import="com.codingbox.dao.UserDao"%>
<%@page import="com.codingbox.vo.RegitVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
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
	
	%>
</body>
</html>












