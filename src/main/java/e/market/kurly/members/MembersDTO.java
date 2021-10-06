package e.market.kurly.members;

import java.sql.Date;

public class MembersDTO {

	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone_num;
	private String address_loca;
	private String address_post;
	private String gender;
	private String birth_date;
	private String recommender;

	/** 이용약관 선택 동의*/
	private int clause_private;
	private int clause_sms;
	private int clause_email;
	
	
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
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getAddress_loca() {
		return address_loca;
	}
	public void setAddress_loca(String address_loca) {
		this.address_loca = address_loca;
	}
	public String getAddress_post() {
		return address_post;
	}
	public void setAddress_post(String address_post) {
		this.address_post = address_post;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}
	public String getRecommender() {
		return recommender;
	}
	public void setRecommender(String recommender) {
		this.recommender = recommender;
	}
	public int getClause_private() {
		return clause_private;
	}
	public void setClause_private(int clause_private) {
		this.clause_private = clause_private;
	}
	public int getClause_sms() {
		return clause_sms;
	}
	public void setClause_sms(int clause_sms) {
		this.clause_sms = clause_sms;
	}
	public int getClause_email() {
		return clause_email;
	}
	public void setClause_email(int clause_email) {
		this.clause_email = clause_email;
	}


	
	
}
