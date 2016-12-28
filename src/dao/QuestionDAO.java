package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import classes.Question;
import connect.DBConnect;

public class QuestionDAO {
	//Lấy thông tin câu hỏi
	public ArrayList<Question> getQuestionList(){
		ArrayList<Question> list = new ArrayList<>();
		try{
			Connection con = DBConnect.getConnection();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM Question;");
			while (rs.next()) {
				Question cauHoi = new Question();
				cauHoi.setqID(rs.getString("qID"));
				cauHoi.setMaMH(rs.getString("maMH"));
				cauHoi.setMaCD(rs.getString("maCD"));
				cauHoi.setNDCauhoi(rs.getString("nDCauhoi"));
				cauHoi.setDapAn(rs.getString("dapAn"));
				list.add(cauHoi);
			}
			con.close();
			
			} catch(SQLException e){
			System.out.println("executeQuery Fail !");
			e.printStackTrace();
			}
		return list;
	}
	//Thêm câu hỏi
	public void insertCauHoi(Question ch) {
		Connection con = DBConnect.getConnection();
		String sql = "insert into Question(qID,NDCauhoi,LuaChonA,LuaChonB,LuaChonC,LuaChonD,DapAn,MaMH,MaCD) values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ch.getqID());
			ps.setString(2, ch.getNDCauhoi());
			ps.setString(3, ch.getLuaChonA());
			ps.setString(4, ch.getLuaChonB());
			ps.setString(5, ch.getLuaChonC());
			ps.setString(6, ch.getLuaChonD());
			ps.setString(7, ch.getDapAn());
			ps.setString(8, ch.getMaMH());
			ps.setString(9, ch.getMaCD());
			ps.executeUpdate();
		
		} catch (SQLException e) {
			Logger.getLogger(QuestionDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		
	}
	
	// Update câu hỏi 
	
	public boolean updateCauHoi(Question ch) {
		Connection con = DBConnect.getConnection();
		String sql = "update cauhoi set NDCauhoi=?, LuaChonA=?, LuaChonB=?, LuaChonC=?, LuaChonD=?, DapAn=?, MaMH=?, MaCD=? where qID=?";
		try {
			PreparedStatement ps = con.prepareCall(sql);
			ps.setString(1, ch.getNDCauhoi());
			ps.setString(2, ch.getLuaChonA());
			ps.setString(3, ch.getLuaChonB());
			ps.setString(4, ch.getLuaChonC());
			ps.setString(5, ch.getLuaChonD());
			ps.setString(6, ch.getDapAn());
			ps.setString(7, ch.getMaMH());
			ps.setString(8, ch.getMaCD());
			ps.setString(9, ch.getqID());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//Xóa câu hỏi
	
	public static boolean delete(String qID) {
		Connection con = DBConnect.getConnection();
		String sql = "delete from Question where qID='" + qID + "'";
		PreparedStatement ps;
		try {
			ps = con.prepareCall(sql);

			ps.executeUpdate();
			return true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return false;
	}

	
}

		
	



	
