package classes;

public class ChuyenDeThi {
	   private String MaCD;
	   private String TenCD;
	   private String MaMH;

	    public ChuyenDeThi() {
	    }

	    public ChuyenDeThi(String MaCD, String TenCD, String MaMH) {
	        this.MaCD = MaCD;
	        this.TenCD = TenCD;
	        this.MaMH = MaMH;
	    }

	    public String getMaCD() {
	        return MaCD;
	    }

	    public void setMaCD(String MaCD) {
	        this.MaCD = MaCD;
	    }

	    public String getTenCD() {
	        return TenCD;
	    }

	    public void setTenCD(String TenCD) {
	        this.TenCD = TenCD;
	    }

	    public String getMaMH() {
	        return MaMH;
	    }

	    public void setMaMH(String MaMH) {
	        this.MaMH = MaMH;
	    }
	   
}
