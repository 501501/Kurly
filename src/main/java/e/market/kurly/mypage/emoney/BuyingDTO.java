package e.market.kurly.mypage.emoney;

public class BuyingDTO {

	// 임시로 만든 클래스(추후 상품구매 Controller 추가시 삭제요망)
	
	private String userId;  //회원아이디
	private String product_name; //상품명(후기적립금용)
	private int use_point; //사용 적립금
	private int order_number; //주문번호
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getUse_point() {
		return use_point;
	}
	public void setUse_point(int use_point) {
		this.use_point = use_point;
	}
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	
	
}
