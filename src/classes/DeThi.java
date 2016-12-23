package classes;

public class DeThi {
	private String MaDe;
	private String NDungDe;
	private String Thoigian;
	public DeThi() {
		super();
	}
	
	public DeThi(String maDe, String nDungDe, String thoigian) {
		super();
		MaDe = maDe;
		NDungDe = nDungDe;
		Thoigian = thoigian;
	}

	public String getMaDe() {
		return MaDe;
	}

	public void setMaDe(String maDe) {
		MaDe = maDe;
	}

	public String getNDungDe() {
		return NDungDe;
	}

	public void setNDungDe(String nDungDe) {
		NDungDe = nDungDe;
	}

	public String getThoigian() {
		return Thoigian;
	}

	public void setThoigian(String thoigian) {
		Thoigian = thoigian;
	}

	

}
