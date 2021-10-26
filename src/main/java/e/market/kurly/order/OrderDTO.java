package e.market.kurly.order;

import java.sql.Date;

public class OrderDTO {
	private String orderNum;
	private Long goodsNo;
	private String productName;
	private Long productNum;
	private Date shippingDate;
	private String reviewCk;
	private String id;

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Long getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNum(Long goodsNo) {
		this.goodsNo = goodsNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Long getProductNum() {
		return productNum;
	}

	public void setProductNum(Long productNum) {
		this.productNum = productNum;
	}

	public Date getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}

	public String getReviewCk() {
		return reviewCk;
	}

	public void setReviewCk(String reviewCk) {
		this.reviewCk = reviewCk;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}