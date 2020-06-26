package zss.excise.entity;

public class Goods {

	private int goodsId;
	private String goodsName;
	private double goodsPrice;
	private String goodsIntroduce;
	private String goodsPic;
	private String goodsColor;
	private String goodsVersion;
	private String goodsSetMeal;
	private String goodsType;

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
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

	public String getGoodsIntroduce() {
		return goodsIntroduce;
	}

	public void setGoodsIntroduce(String goodsIntroduce) {
		this.goodsIntroduce = goodsIntroduce;
	}

	public String getGoodsPic() {
		return goodsPic;
	}

	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}

	public String getGoodsColor() {
		return goodsColor;
	}

	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
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

	public String getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsIntroduce=" + goodsIntroduce + ", goodsPic=" + goodsPic + ", goodsColor=" + goodsColor
				+ ", goodsVersion=" + goodsVersion + ", goodsSetMeal=" + goodsSetMeal + ", goodsType=" + goodsType
				+ "]";
	}

}
