package classes;

public class CTKQThi {
	private String MaDe;
	private String UserName;
	private int Diem;
	public CTKQThi() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CTKQThi(String maDe, String userName, int diem) {
		super();
		MaDe = maDe;
		UserName = userName;
		Diem = diem;
	}
	public String getMaDe() {
		return MaDe;
	}
	public void setMaDe(String maDe) {
		MaDe = maDe;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public int getDiem() {
		return Diem;
	}
	public void setDiem(int diem) {
		Diem = diem;
	}
	
}
