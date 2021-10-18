package e.market.kurly.mypage.review;

import java.sql.Date;
import java.util.List;

import e.market.kurly.board.BoardFilesDTO;

public class ReviewDTO {
	private Long num;
	private Long orderNum;
	private Long goodsNo;
	private String title;
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
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public Long getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(Long goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public void setRegData(Date regDate) {
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
