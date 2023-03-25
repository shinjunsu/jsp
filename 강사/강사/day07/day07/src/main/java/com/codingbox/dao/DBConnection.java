package com.codingbox.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConntion() {
		Connection conn = null;
		
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "jsp";
			String password = "jsp";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("드라이버 로딩 오류");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("DB 접속 오류");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("알 수 없는 에러");
			e.printStackTrace();
		}
		
		return conn;
	}
}










