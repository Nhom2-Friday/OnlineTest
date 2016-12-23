package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import classes.DeThi;
import classes.Users;
import connect.DBConnect;

public class DeThiDAO {
	//Lấy thông tin đề thi
	public  ArrayList<DeThi> getDeThiList() {
		ArrayList<DeThi> list = new ArrayList<>();
		try {
			Connection con = DBConnect.getConnection();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM DeThi;");
			while (rs.next()){
				DeThi dethi = new DeThi();
				dethi.setMaDe(rs.getString("maDe"));
	            dethi.setNDungDe(rs.getString("nDungDe"));
	            dethi.setThoigian(rs.getString("thoigian"));
				list.add(dethi);
			}
			con.close();
			
		} catch(SQLException e){
			System.out.println("executeQuery Fail !");
			e.printStackTrace();
		}
		return list;
	}
	//Thêm đề thi
	public void insertDeThi(DeThi dt){

		Connection con = DBConnect.getConnection();
		String sql = "insert into DeThi(MaDe,NDungDe,Thoigian) values(?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, dt.getMaDe());
			ps.setString(2, dt.getNDungDe());
			ps.setString(3, dt.getThoigian());
			ps.executeUpdate();
		} catch (SQLException e) {
			Logger.getLogger(DeThiDAO.class.getName()).log(Level.SEVERE, null, e);
		}
	}

	//Xóa đề thi
	public boolean delete(String maDe) throws SQLException {

		Connection con = DBConnect.getConnection();
		String sql = "delete from DeThi where MaDe='" + maDe + "'";
		try {
			PreparedStatement ps = con.prepareCall(sql);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			Logger.getLogger(DeThiDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		return false;
	}
	//Chi tiết đề thi
	public DeThi CTDeThi(String maDe) throws SQLException {
		Connection con = DBConnect.getConnection();
		String sql = "select * from DeThi where MaDe='" + maDe + "'";
		PreparedStatement ps;
		try {
			ps = con.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DeThi dt = new DeThi();
				dt.setMaDe(rs.getString("MaDe"));
				dt.setNDungDe(rs.getString("NDungDe"));
				dt.setThoigian(rs.getString("Thoigian"));
				return dt;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//Update đề thi
	public boolean update(DeThi dt){
		Connection connect=DBConnect.getConnection();
        String sql="update DeThi set NDungDe=?, Thoigian=? where MaDe=?";
        PreparedStatement ps;
        try {
            ps=connect.prepareCall(sql);
            ps.setString(1, dt.getNDungDe());
            ps.setString(2, dt.getThoigian());
            ps.setString(3, dt.getMaDe());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DeThiDAO.class.getName()).log(Level.SEVERE,null,e);
        }
        return false;
	}

}
