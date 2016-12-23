package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

}
