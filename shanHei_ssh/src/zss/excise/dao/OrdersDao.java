package zss.excise.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import zss.excise.entity.Goods;
import zss.excise.entity.Orders;
import zss.excise.utils.HibernateUtils;

public class OrdersDao {

	private Orders orders = new Orders();
	private Session session = HibernateUtils.getSession();
	private Query query;
	private List<Orders> ordersList;

	/*
	 * 得到订单列表
	 */
	public List<Orders> getOrdersList(String userName) {
		System.out.println(userName + "od");
		query = session.createQuery("from Orders where userName=?");
		query.setParameter(0, userName);
		ordersList = query.list();
		return ordersList;
	}

	/*
	 * 从详情页添加到订单
	 */
	public boolean setOrders(String userName, Goods goods) {
		orders.setUserName(userName);
		orders.setGoodsId(goods.getGoodsId());
		orders.setGoodsAmount(1);
		orders.setOrdersSum(goods.getGoodsPrice());
		session.saveOrUpdate(orders);
		return true;
	}

	/*
	 * 删除订单
	 */
	public boolean delOrders(int oid) {
		orders = (Orders) session.get("ordersId", oid);
		session.delete(orders);
		return true;
	}

}
