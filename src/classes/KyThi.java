package classes;

import java.sql.Date;
import java.sql.Time;

public class KyThi {
	private String MaDe;
	private String MaMH;
	private String Thoigianthi;
	private Date NgayThi;
	private String PhongThi;
	public KyThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public KyThi(String maDe, String maMH, String thoigianthi, Date ngayThi, String phongThi) {
		super();
		MaDe = maDe;
		MaMH = maMH;
		Thoigianthi = thoigianthi;
		NgayThi = ngayThi;
		PhongThi = phongThi;
	}


	public String getMaDe() {
		return MaDe;
	}


	public void setMaDe(String maDe) {
		MaDe = maDe;
	}


	public String getMaMH() {
		return MaMH;
	}


	public void setMaMH(String maMH) {
		MaMH = maMH;
	}


	public String getThoigianthi() {
		return Thoigianthi;
	}


	public void setThoigianthi(String thoigianthi) {
		Thoigianthi = thoigianthi;
	}


	public Date getNgayThi() {
		return NgayThi;
	}


	public void setNgayThi(Date ngayThi) {
		NgayThi = ngayThi;
	}


	public String getPhongThi() {
		return PhongThi;
	}


	public void setPhongThi(String phongThi) {
		PhongThi = phongThi;
	}
	
	


	
	
}
