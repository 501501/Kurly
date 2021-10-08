package e.market.kurly.mypage.qna;

import java.sql.Date;
import java.util.List;

import e.market.kurly.board.BoardFilesDTO;

public class QnaDTO {
	private Long num;
	private String category;
	private String title;
	private String orderNum;
	private String email_ck;
	private String phone_ck;
	private String contents;
	private Date regDate;
	private String id;
	
	private List<BoardFilesDTO> files;
	
	public Long getNum() {
		return num;
	}

	public void setNum(Long num) {
		this.num = num;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getEmail_ck() {
		return email_ck;
	}

	public void setEmail_ck(String email_ck) {
		this.email_ck = email_ck;
	}

	public String getPhone_ck() {
		return phone_ck;
	}

	public void setPhone_ck(String phone_ck) {
		this.phone_ck = phone_ck;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<BoardFilesDTO> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFilesDTO> files) {
		this.files = files;
	}
	
}
