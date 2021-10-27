package e.market.kurly.order;

import java.sql.Date;
import java.util.List;

public class OrderDTO {
	private Long orderNum;
	private Long goodsNo;
	private String productName;
	private Long productNum;
	private Long price;
	private Date orderDate;
	private Date shippingDate;
	private String reviewCk;
	private String id;
	
	public Long getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Long orderNum) {
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
	
	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
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

	public void setGoodsNo(Long goodsNo) {
		this.goodsNo = goodsNo;
	}
}