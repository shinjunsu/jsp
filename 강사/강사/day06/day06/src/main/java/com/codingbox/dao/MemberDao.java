package com.codingbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.codingbox.vo.MemberBean;

public class MemberDao {
	
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public int getAge(String name) {
		String sql = "SELECT age FROM MEMBER WHERE name=?";
		int age = 0;
		
		try {
			conn = DBConnection.getConntion();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			ResultSet rs = pstm.executeQuery();
			
			if( rs.next() ) {
				age = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return age;
	}
	
	public ArrayList<MemberBean> selectAll(){
		String sql = "SELECT * FROM MEMBER";
		ArrayList<MemberBean> result = new ArrayList<>();
		
		try {
			conn = DBConnection.getConntion();
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				MemberBean member = new MemberBean();
				member.setName( rs.getString(1) );
				member.setAge(rs.getInt(2));
				result.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
}









