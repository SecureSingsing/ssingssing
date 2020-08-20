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

public class Register {

	public int registrationUser (String userID, String userPW, String userNAME, double weight, String gender) throws ClassNotFoundException {
		ApplicationContext context = new ClassPathXmlApplicationContext("datasource.xml");
		DataSource dt = (DataSource) context.getBean("dataSource");
		
		PreparedStatement psIdChk = null;
		PreparedStatement psReg = null;
		
		Connection conn = null;
		
		ResultSet rs = null;
		int idEx = -1;
		int chk = -1;
		
		try {
			conn = dt.getConnection();

			String sqlID = "select * from test.USERS where userID=?";
			String sqlREG = "insert into test.USERS(userID, userPW, userNAME, weight, gender, collectd_point, created_at) values (?, ?, ?, ?, ?, 0 ,now())";
			
			psIdChk = conn.prepareStatement(sqlID);
			psIdChk.setString(1, userID);	
			
			rs = psIdChk.executeQuery();
			
			System.out.println();
			System.out.println(rs);
			System.out.println();
			
			if(rs.next()){
				return chk;
			}
			
			chk = 1;
			
			psReg = conn.prepareStatement(sqlREG);
			psReg.setString(1, userID);	
			psReg.setString(2, userPW);
			psReg.setString(3, userNAME);
			psReg.setDouble(4, weight);
			psReg.setString(5, gender);		
			
			psReg.executeUpdate();
			
			return chk;
			 
		} catch(Exception e){
			e.printStackTrace();
			return chk;
		} finally{
			if (psReg != null)
				try{
					psReg.close();
					if(conn != null)
						conn.close();
				} catch (SQLException e){
					e.printStackTrace();
				}
		}
		
	}
}