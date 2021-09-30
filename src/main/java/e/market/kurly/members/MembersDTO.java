package e.market.kurly.members;

public class MembersDTO {

	private String id;
	private String pw;
	private String name;
	private String email;
	private String phoneNumber;
	private String address;
	private String gender;
	private String birth;
	
	/** 이용약관 선택 동의*/
	private String private_agree;
	private String private_sms;
	private String private_email;
	
	
	public String getPrivate_agree() {
		return private_agree;
	}
	public void setPrivate_agree(String private_agree) {
		this.private_agree = private_agree;
	}
	public String getPrivate_sms() {
		return private_sms;
	}
	public void setPrivate_sms(String private_sms) {
		this.private_sms = private_sms;
	}
	public String getPrivate_email() {
		return private_email;
	}
	public void setPrivate_email(String private_email) {
		this.private_email = private_email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
}
