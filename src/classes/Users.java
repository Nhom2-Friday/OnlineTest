package classes;

import java.util.Date;

public class Users {
	private String UserName;
    private String pssword;
    private String FullName;
    private String Gender;
    private String NumberPhone;
    private String Address;
    private String Email;
    private String perUser;
    

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}


	

	public Users(String userName, String pssword, String fullName, String gender, String numberPhone, String address,
			String email, String perUser) {
		super();
		UserName = userName;
		this.pssword = pssword;
		FullName = fullName;
		Gender = gender;
		NumberPhone = numberPhone;
		Address = address;
		Email = email;
		this.perUser = perUser;
	}




	public String getUserName() {
		return UserName;
	}


	public void setUserName(String userName) {
		UserName = userName;
	}


	public String getPssword() {
		return pssword;
	}


	public void setPssword(String pssword) {
		this.pssword = pssword;
	}


	public String getFullName() {
		return FullName;
	}


	public void setFullName(String fullName) {
		FullName = fullName;
	}


	public String getGender() {
		return Gender;
	}


	public void setGender(String gender) {
		Gender = gender;
	}


	public String getNumberPhone() {
		return NumberPhone;
	}


	public void setNumberPhone(String numberPhone) {
		NumberPhone = numberPhone;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}




	public String getPerUser() {
		return perUser;
	}




	public void setPerUser(String perUser) {
		this.perUser = perUser;
	}


	

	
}