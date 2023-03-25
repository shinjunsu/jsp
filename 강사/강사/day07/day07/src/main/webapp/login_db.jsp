<%@page import="com.codingbox.vo.MemberBean"%>
<%@page import="com.codingbox.dao.MemberDao"%>
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
		MemberDao mdao = new MemberDao();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		MemberBean member = mdao.login(userid, userpw);
		
		if(member != null){
			// 로그인 성공 
			session.setAttribute("session_id", member);
	%>
		<script>
			location.href ="main_view.jsp";
		</script>
	<%} else { // 로그인 실패 %>
		<script>
			alert("아이디 또는 패스워드를 확인해 주세요");
			location.href ="login_view.jsp";
		</script>
	
	<%} %>
</body>
</html>














