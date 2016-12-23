package classes;

public class Lambaithi {
	private String UserName;
	private String MaDe;
	private String qID;
	private String Luachon;
	private int Diem;

	public Lambaithi() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Lambaithi(String userName, String maDe, String qID, String luachon, int diem) {
		super();
		UserName = userName;
		MaDe = maDe;
		this.qID = qID;
		Luachon = luachon;
		Diem = diem;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getMaDe() {
		return MaDe;
	}

	public void setMaDe(String maDe) {
		MaDe = maDe;
	}

	public String getqID() {
		return qID;
	}

	public void setqID(String qID) {
		this.qID = qID;
	}

	public String getLuachon() {
		return Luachon;
	}

	public void setLuachon(String luachon) {
		Luachon = luachon;
	}

	public int getDiem() {
		return Diem;
	}

	public void setDiem(int diem) {
		Diem = diem;
	}
	

}
