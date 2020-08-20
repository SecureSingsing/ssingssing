package com.xingxing.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Locale;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.Model;

public class Login {

	public int loginChk(String userID, String userPW, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException {
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
				if(dbPW.equals(userPW)){
					HttpSession session = request.getSession();
					chk = 1;
					session.setAttribute("id", userID);
					Cookie cookie = new Cookie("id",userID);
	                cookie.setMaxAge(60*2);
	                cookie.setPath("/");
	                response.addCookie(cookie);
				}
				else
					chk = 0;
			} else {
				chk = -1;
			}
			
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