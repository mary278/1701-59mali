package zss.excise.service;

import java.util.List;

import zss.excise.dao.GoodsDao;
import zss.excise.entity.Goods;

public class GoodsService {
	private GoodsDao gd = new GoodsDao();
	private Goods g;
	private List<Goods> goodsList;

	/*
	 * 通过图片路径查询商品详情
	 */
	public Goods getGoodsInfo(String goodsPic) {
		System.out.println(goodsPic + "gs");
		g = gd.getGoods(goodsPic);
		return g;
	}

	/*
	 * 通过goodsId查询商品详情
	 */
	public Goods getGoodsInfo(int goodsId) {
		g = gd.getGoods(goodsId);
		return g;
	}

	/*
	 * 通过key搜索商品
	 */
	public List<Goods> getGoodsList(String key) {
		goodsList = gd.searchGoods(key);
		return goodsList;
	}

}
