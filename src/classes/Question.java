package classes;

public class Question {
	private String qID;
	private String NDCauhoi;
	private String LuaChonA;
	private String LuaChonB;
	private String LuaChonC;
	private String LuaChonD;
	private String DapAn;
	private String MaMH;
	private String MaCD;
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Question(String qID, String nDCauhoi, String luaChonA, String luaChonB, String luaChonC, String luaChonD,
			String dapAn, String maMH, String maCD) {
		super();
		this.qID = qID;
		NDCauhoi = nDCauhoi;
		LuaChonA = luaChonA;
		LuaChonB = luaChonB;
		LuaChonC = luaChonC;
		LuaChonD = luaChonD;
		DapAn = dapAn;
		MaMH = maMH;
		MaCD = maCD;
	}
	public String getqID() {
		return qID;
	}
	public void setqID(String qID) {
		this.qID = qID;
	}
	public String getNDCauhoi() {
		return NDCauhoi;
	}
	public void setNDCauhoi(String nDCauhoi) {
		NDCauhoi = nDCauhoi;
	}
	public String getLuaChonA() {
		return LuaChonA;
	}
	public void setLuaChonA(String luaChonA) {
		LuaChonA = luaChonA;
	}
	public String getLuaChonB() {
		return LuaChonB;
	}
	public void setLuaChonB(String luaChonB) {
		LuaChonB = luaChonB;
	}
	public String getLuaChonC() {
		return LuaChonC;
	}
	public void setLuaChonC(String luaChonC) {
		LuaChonC = luaChonC;
	}
	public String getLuaChonD() {
		return LuaChonD;
	}
	public void setLuaChonD(String luaChonD) {
		LuaChonD = luaChonD;
	}
	public String getDapAn() {
		return DapAn;
	}
	public void setDapAn(String dapAn) {
		DapAn = dapAn;
	}
	public String getMaMH() {
		return MaMH;
	}
	public void setMaMH(String maMH) {
		MaMH = maMH;
	}
	public String getMaCD() {
		return MaCD;
	}
	public void setMaCD(String maCD) {
		MaCD = maCD;
	}
	
	
}
