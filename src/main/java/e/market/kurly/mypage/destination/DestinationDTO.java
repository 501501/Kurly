package e.market.kurly.mypage.destination;

public class DestinationDTO {

	/** 주문자 아이디 */
	private String id;
	
	/** 수령자 인적사항*/
	private String receiver_name;
	private String receiver_phone;
	
	/** 수령자 주소*/
	private String address_post;
	private String address_location;
	
	/** 기본배송지 여부(Members테이블에 속하는지)*/
	private String basic_destination;
	/** 지정배송지 여부(물품 구매시 자동 지정될 주소인지)*/
	private String select_destination;
	/** 배송유형(샛별배송 or 일반배송 or 배송불가) */
	private String delivery_type;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getReceiver_phone() {
		return receiver_phone;
	}
	public void setReceiver_phone(String receiver_phone) {
		this.receiver_phone = receiver_phone;
	}
	public String getAddress_post() {
		return address_post;
	}
	public void setAddress_post(String address_post) {
		this.address_post = address_post;
	}
	public String getAddress_location() {
		return address_location;
	}
	public void setAddress_location(String address_location) {
		this.address_location = address_location;
	}
	public String getBasic_destination() {
		return basic_destination;
	}
	public void setBasic_destination(String basic_destination) {
		this.basic_destination = basic_destination;
	}
	public String getSelect_destination() {
		return select_destination;
	}
	public void setSelect_destination(String select_destination) {
		this.select_destination = select_destination;
	}
	public String getDelivery_type() {
		return delivery_type;
	}
	public void setDelivery_type(String delivery_type) {
		this.delivery_type = delivery_type;
	}
	
	
}
