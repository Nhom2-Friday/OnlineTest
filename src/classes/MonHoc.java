package classes;

public class MonHoc {
	private String MaMH;
	private String TenMH;
	public MonHoc() {
    }

    public MonHoc(String MaMH, String TenMH) {
        this.MaMH = MaMH;
        this.TenMH = TenMH;
    }

    public String getMaMH() {
        return MaMH;
    }

    public void setMaMH(String MaMH) {
        this.MaMH = MaMH;
    }

    public String getTenMH() {
        return TenMH;
    }

    public void setTenMH(String TenMH) {
        this.TenMH = TenMH;
    }

}
