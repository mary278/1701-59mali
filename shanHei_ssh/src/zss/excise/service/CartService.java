package zss.excise.service;

import java.util.ArrayList;
import java.util.List;

import zss.excise.dao.CartDao;
import zss.excise.entity.Cart;
import zss.excise.entity.Goods;

public class CartService {
	private CartDao cd = new CartDao();
	private OrdersService os = new OrdersService();
	private GoodsService gs = new GoodsService();
	private Cart c;
	private List<Cart> cartList;

	/*
	 * 从详情页添加到购物车
	 */
	public boolean addCart(String userName, Goods goods, int cga) {
		return (cd.setgoodsCart(userName, goods, cga));
	}

	/*
	 * 得到购物车
	 */
	public Cart getCart(String userName, int cid) {
		c = cd.getCart(userName, cid);
		return c;
	}

	/*
	 * 查看购物车
	 */
	public List<Cart> getCartList(String userName) {
		cartList = cd.getCartList(userName);
		List<Cart> cl = new ArrayList<Cart>();
		for (Cart c : cartList) {
			Goods g = gs.getGoodsInfo(c.getGoodsId());
			System.out.println(c.getCartId() + ":" + g + g.getGoodsName());
			c.setGoodsName(g.getGoodsName());
			c.setGoodsPic(g.getGoodsPic());
			c.setGoodsSetMeal(g.getGoodsSetMeal());
			c.setGoodsVersion(g.getGoodsVersion());
			c.setGoodsPrice(g.getGoodsPrice());
			System.out.println(c + "clqianmiande");
			cl.add(c);
		}
		return cl;
	}

	/*
	 * 添加到订单
	 */
	public boolean dropCartOrders(int cid, String userName, Goods goods) {
		os.addOrders(userName, goods);
		return (cd.delOrders(cid, userName));
	}

	/*
	 * 删除记录
	 */
	public boolean dropCart(int cid, String userName) {
		return (cd.delOrders(cid, userName));
	}

}
