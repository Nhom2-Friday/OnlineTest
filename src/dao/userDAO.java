package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.sql.PreparedStatement;


import classes.ClassUser;
import classes.Users;
import connect.DBConnect;



public class userDAO {
	//Kiểm tra đăng nhập
	public static boolean loginAuth(String username, String password) {
		try {
			Connection con = DBConnect.getConnection();
			ResultSet rs = con.createStatement().executeQuery("select * from Users where username='"+username+"' and password='"+password+"'");
			if(rs.next()){
				return true;
			}
			con.close();
		} catch(SQLException e){
			System.out.println("executeQuery Fail !");
			e.printStackTrace();
		}
		return false;
	}
	// Lấy thông tin user
	public  ArrayList<Users> getUserList() {
		ArrayList<Users> list = new ArrayList<>();
		try {
			Connection con = DBConnect.getConnection();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM Users;");
			while (rs.next()){
				Users user = new Users();
				user.setUserName(rs.getString("userName"));
	            user.setPssword(rs.getString("pssword"));
	            user.setEmail(rs.getString("email"));
	            user.setPerUser(rs.getString("perUser"));
				list.add(user);
			}
			con.close();
			
		} catch(SQLException e){
			System.out.println("executeQuery Fail !");
			e.printStackTrace();
		}
		return list;
	}

	
	
	public static  Users getUser(String userName,String pssword) {
		Users user = null;
		try {
			Connection con = DBConnect.getConnection();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM Users where UserName='"+userName+"' and pssword='"+pssword+"'");
			if (rs.next()){
				user = new Users();
				user.setUserName(rs.getString("userName"));
	            user.setPssword(rs.getString("pssword"));
	            user.setEmail(rs.getString("email"));
	            user.setPerUser(rs.getString("perUser"));
	            return user;
			}
			con.close();
			
		} catch(SQLException e){
			System.out.println("executeQuery Fail !");
			e.printStackTrace();
		}
		return user;
	}
	
	
}


