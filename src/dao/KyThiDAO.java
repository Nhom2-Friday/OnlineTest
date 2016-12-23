package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import classes.KyThi;
import connect.DBConnect;

public class KyThiDAO {
	//Lấy thông tin đề thi
		public  ArrayList<KyThi> getKyThiList() {
			ArrayList<KyThi> list = new ArrayList<>();
			try {
				Connection con = DBConnect.getConnection();
				ResultSet rs = con.createStatement().executeQuery("SELECT * FROM KyThi;");
				while (rs.next()){
					KyThi kythi = new KyThi();
					kythi.setMaDe(rs.getString("maDe"));
					kythi.setMaMH(rs.getString("maMH"));
					kythi.setNgayThi(rs.getDate("ngayThi"));
					kythi.setThoigianthi(rs.getString("thoigianthi"));
					kythi.setPhongThi(rs.getString("phongThi"));
					list.add(kythi);
				}
				con.close();
				
			} catch(SQLException e){
				System.out.println("executeQuery Fail !");
				e.printStackTrace();
			}
			return list;
		}
		// Thêm kỳ thi
		public void insertKyThi(KyThi kt){
			Connection con = DBConnect.getConnection();
			String sql="insert into KyThi (MaDe,MaMH,NgayThi,Thoigianthi,PhongThi) values(?,?,?,?,?)";
			try{
				PreparedStatement ps= con.prepareStatement(sql);
				ps.setString(1, kt.getMaDe());
				ps.setString(2, kt.getMaMH());
				ps.setDate(3, kt.getNgayThi());
				ps.setString(4, kt.getThoigianthi());
				ps.setString(5, kt.getPhongThi());
				ps.executeUpdate();
				
			}catch(SQLException ex){
				ex.printStackTrace();
			}

		}
		//Update kỳ thi
		public boolean update(KyThi kt) throws SQLException{
			Connection con=DBConnect.getConnection();
			String sql="update KyThi set Thoigianthi=?, NgayThi=?, PhongThi=? where MaDe=? and MaMH=?";
			PreparedStatement ps=con.prepareCall(sql);
			try{
				ps.setString(1,kt.getThoigianthi());
				ps.setDate(2, kt.getNgayThi());
				ps.setString(3, kt.getPhongThi());
				ps.setString(4, kt.getMaDe());
				ps.setString(5, kt.getMaMH());
				ps.executeUpdate();
				return true;
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			return false;
		}
		//Xóa kỳ thi
		public boolean delete(String MaDe) throws SQLException{
			Connection con=DBConnect.getConnection();
			String sql="delete from KyThi where MaDe='"+MaDe+"'";
			PreparedStatement ps;
			try{
				ps=con.prepareCall(sql);
				ps.executeUpdate();
				return true;
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			return false;
		}
		//Kỳ thi theo mã đề
		public KyThi getWithMaDe(String MaDe){
			Connection con=DBConnect.getConnection();
			String sql="select * from KyThi where MaDe='"+MaDe+"'";
			PreparedStatement ps;
			KyThi thi=new KyThi();
			try{
				ps=con.prepareCall(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					thi.setMaDe(rs.getString("MaDe"));
					thi.setNgayThi(rs.getDate("NgayThi"));
					thi.setPhongThi(rs.getString("PhongThi"));
					thi.setMaMH(rs.getString("MaMH"));
					thi.setThoigianthi(rs.getString("Thoigianthi"));
				}
				
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			return thi;
		}
		//Kỳ thi theo thời gian 
		public KyThi getWithTG(){
			Connection con=DBConnect.getConnection();
			String sql="SELECT * from kythi where NgayThi>=CURDATE() and ThoiGian>=CURTIME()";
			PreparedStatement ps;
			KyThi thi=new KyThi();
			try{
				ps=con.prepareCall(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					return thi;
				}
				
			}catch(SQLException ex){
				ex.printStackTrace();
			}
			return null;
		}

}
