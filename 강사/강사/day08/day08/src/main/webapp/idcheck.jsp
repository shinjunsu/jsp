<%@page import="com.codingbox.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	MemberDao mdao = new MemberDao();
	if( !mdao.checkId(userid) ){
		// 회원가입 가능 경우
		out.print("ok");
	} else {
		// 회원가입 불가 경우
		out.print("not-ok");
	}


%>