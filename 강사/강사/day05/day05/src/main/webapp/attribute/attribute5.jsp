<%@page import="com.codingbox.vo.User"%>
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
	// 세명의 아이디, 이름, 나이
	// attribute6.jsp 전송
	User[] arUser = {
		new User("apple", "김사과", 10),
		new User("java", "김자바", 20),
		new User("jsp", "이순신", 200)
	};

	request.setAttribute("users", arUser);
	// attribute6.jsp 전송, out.println 으로 출력
	pageContext.forward("attribute6.jsp");
%>
</body>
</html>












