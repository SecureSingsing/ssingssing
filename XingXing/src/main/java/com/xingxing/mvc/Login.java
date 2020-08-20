package com.xingxing.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Locale;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import javax.sql.DataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.Model;

public class Login {

	public int loginCheck(String userID, String userPW) throws ClassNotFoundException {
		ApplicationContext context = new ClassPathXmlApplicationContext("datasource.xml");
		DataSource dt = (DataSource) context.getBean("dataSource");
		PreparedStatement pstmt = null;
		Connection conn = null;
		String dbPW = "";
		ResultSet rs = null;
		int chk = -1;
		
		try {
			conn = dt.getConnection();

			String sql = "select userPW from test.USERS WHERE userID= ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);	
			
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				dbPW = rs.getString("userPW");
				if(dbPW.equals(userPW))
					chk = 1;
				else
					chk = 0;
			} else {
				chk = -1;
			}
			System.out.println("문자열체"+dbPW);
			
			return chk;
			 
		} catch(Exception e){
			e.printStackTrace();
			return chk;
		} finally{
			if (pstmt != null)
				try{
					pstmt.close();
					if(conn != null)
						conn.close();
				} catch (SQLException e){
					e.printStackTrace();
				}
		}
		
	}
}