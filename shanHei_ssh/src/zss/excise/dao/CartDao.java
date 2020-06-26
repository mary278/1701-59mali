package zss.excise.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import zss.excise.entity.Cart;
import zss.excise.entity.Goods;
import zss.excise.entity.Orders;
import zss.excise.utils.HibernateUtils;

public class CartDao {

	private Cart cart = new Cart();
	private Goods goods = new Goods();
	private Orders orders = new Orders();
	private Session session = HibernateUtils.getSession();
	private Query query;
	private List<Orders> ordersList;
	private List<Cart> cartList;
	private OrdersDao od = new OrdersDao();
	private GoodsDao gd = new GoodsDao();

	/*
	 * 得到购物车
	 */
	public Cart getCart(String userName, int cid) {
		System.out.println(userName + "cd");
		query = session.createQuery("from Cart where userName=? and cartId=?");
		query.setParameter(0, userName);
		query.setParameter(1, cid);
		cart = (Cart) query.list().get(0);
		return cart;
	}

	/*
	 * 得到购物车列表
	 */
	public List<Cart> getCartList(String userName) {
		System.out.println(userName + "cd");
		query = session.createQuery("from Cart where userName=?");
		query.setParameter(0, userName);
		cartList = query.list();

		return cartList;
	}

	/*
	 * 从商品详情页添加到购物车
	 */
	public boolean setgoodsCart(String userName, Goods goods, int cga) {
		cart.setUserName(userName);
		cart.setGoodsId(goods.getGoodsId());
		cart.setCartGoodsAmount(cga);
		session.saveOrUpdate(cart);
		return true;
	}

	/*
	 * 提交到订单
	 */
	public boolean delOrders(int cid, String userName) {
		cart = getCart(userName, cid);
		goods = gd.getGoods(cart.getGoodsId());
		od.setOrders(userName, goods);
		session.delete(cart);
		return true;
	}

}
