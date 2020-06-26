package zss.excise.entity;

public class Cart {
	private int cartId;
	private String userName;
	private int goodsId;
	private int cartGoodsAmount;
	private String goodsName;
	private double goodsPrice;
	private String goodsVersion;
	private String goodsSetMeal;
	private String goodsPic;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getCartGoodsAmount() {
		return cartGoodsAmount;
	}

	public void setCartGoodsAmount(int cartGoodsAmount) {
		this.cartGoodsAmount = cartGoodsAmount;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsVersion() {
		return goodsVersion;
	}

	public void setGoodsVersion(String goodsVersion) {
		this.goodsVersion = goodsVersion;
	}

	public String getGoodsSetMeal() {
		return goodsSetMeal;
	}

	public void setGoodsSetMeal(String goodsSetMeal) {
		this.goodsSetMeal = goodsSetMeal;
	}

	public String getGoodsPic() {
		return goodsPic;
	}

	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}

}
