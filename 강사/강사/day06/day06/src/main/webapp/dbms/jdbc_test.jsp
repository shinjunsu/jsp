<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = null;
	// 활용할 드라이버
	String driver = "oracle.jdbc.driver.OracleDriver";
	// 목적지(Oracle DB)
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	// dbms 계정명
	String user = "jsp";
	// dbms 비밀번호
	String password = "jsp";
	
	int check = 0;
	
	try{
		Class.forName(driver);
		System.out.println("jdbc driver 로딩 성공");
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("오라클 연결 성공!!");
		
		String sql 
		= "INSERT INTO CAR VALUES ('4', 'K7', 'white', 70000000)";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		check = pstm.executeUpdate();
		System.out.println("check : " + check);
		
		if( check != 0 ){
			System.out.println("테이터 삽입 성공");
		} else {
			System.out.println("테이터 삽입 실패!");
		}
		
	} catch(Exception e){
		System.out.println("예외발생");
		e.printStackTrace();
	}
	
	
	
	
	
	

%>
</body>
</html>












