package e.market.kurly.mypage.emoney;

import java.sql.Date;

public class EmoneyDTO {

	private Long emoney_seq; //적립금 시퀀스
	private String user_id; //회원id
	private int emoney; //적립금
	private int balance; //적립금 잔액
	private String memo; //적립금 비고
	private Date reg_date; //적립일자
	private Date exp_date; //적립금 만료일자
	private String status; //(N=미사용, Y=사용, E=만료소멸)
	
	
	public Long getEmoney_seq() {
		return emoney_seq;
	}
	public void setEmoney_seq(Long emoney_seq) {
		this.emoney_seq = emoney_seq;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getEmoney() {
		return emoney;
	}
	public void setEmoney(int emoney) {
		this.emoney = emoney;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getExp_date() {
		return exp_date;
	}
	public void setExp_date(Date exp_date) {
		this.exp_date = exp_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
