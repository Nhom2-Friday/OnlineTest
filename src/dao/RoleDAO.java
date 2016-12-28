package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBConnect;
import classes.ClassUser;

public class RoleDAO {
	public ClassUser findRoleById(String perUser) throws SQLException{
		Connection connection= DBConnect.getConnection();
		ClassUser role=new ClassUser();
		
		String sql="Select * from ClassUser Where perUser="+perUser;
		PreparedStatement ps=connection.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			role.setperUser(rs.getString("perUser"));
			role.setperName(rs.getString("perName"));
			rs.close();
			ps.close();
			connection.close();
			return role;
		}
		rs.close();
		ps.close();
		connection.close();
		return null;
	}
	//delete role
	public static boolean delete(String perUser) {
		Connection connect = DBConnect.getConnection();
		String sql = "delete from ClassUser WHERE perUser='" + perUser + "'";
		PreparedStatement ps;
		try {
			ps = connect.prepareCall(sql);
			ps.executeUpdate();

			return true;
		} catch (SQLException e) {
			Logger.getLogger(RoleDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		return false;
	}
}
