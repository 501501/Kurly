package e.market.kurly.goods.goods_cart;

public class GoodsCartDTO {

	private int cart_id; /** 장바구니 아이디 */
	private String userId; /** 회원 아이디 */
	private String name; /** 회원명 */
	private int product_id; /** 상품 아이디 */
	private String product_name; /** 상품명*/
	private int price; /** 상품 한개의 가격 */
	private int money; /** 상품가격*총량==총 물건의 가격 */
	private int amount; /** 장바구니에 담은 갯수 */
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
