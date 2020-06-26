package zss.excise.entity;

public class Orders {
	private int ordersId;
	private String userName;
	private int goodsId;
	private int goodsAmount;
	private double ordersSum;
	private String goodsName;
	private double goodsPrice;
	private String goodsVersion;
	private String goodsSetMeal;
	private String goodsPic;

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
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

	public int getGoodsAmount() {
		return goodsAmount;
	}

	public void setGoodsAmount(int goodsAmount) {
		this.goodsAmount = goodsAmount;
	}

	public double getOrdersSum() {
		return ordersSum;
	}

	public void setOrdersSum(double ordersSum) {
		this.ordersSum = ordersSum;
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

	@Override
	public String toString() {
		return "Orders [ordersId=" + ordersId + ", userName=" + userName + ", goodsId=" + goodsId + ", goodsAmount="
				+ goodsAmount + ", ordersSum=" + ordersSum + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsVersion=" + goodsVersion + ", goodsSetMeal=" + goodsSetMeal + ", goodsPic=" + goodsPic + "]";
	}

}
