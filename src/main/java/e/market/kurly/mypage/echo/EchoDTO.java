package e.market.kurly.mypage.echo;

import java.sql.Date;
import java.util.List;

import e.market.kurly.board.BoardFilesDTO;

public class EchoDTO {
	private Long num;
	private String category;
	private String title;
	private String productName;
	private String contents;
	private Date regDate;
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
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
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
	public List<BoardFilesDTO> getFiles() {
		return files;
	}
	public void setFiles(List<BoardFilesDTO> files) {
		this.files = files;
	}
	
}
