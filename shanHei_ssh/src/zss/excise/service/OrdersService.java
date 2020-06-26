package zss.excise.service;

import java.util.ArrayList;
import java.util.List;

import zss.excise.dao.OrdersDao;
import zss.excise.entity.Goods;
import zss.excise.entity.Orders;

public class OrdersService {
	private OrdersDao od = new OrdersDao();
	private GoodsService gs = new GoodsService();
	private Orders o;
	private List<Orders> ordersList;

	/*
	 * 添加订单
	 */
	public boolean addOrders(String userName, Goods goods) {
		return (od.setOrders(userName, goods));
	}

	/*
	 * 查看订单
	 */
	public List<Orders> getOrdersList(String userName) {
		ordersList = od.getOrdersList(userName);
		List<Orders> ol = new ArrayList<Orders>();
		for (Orders o : ordersList) {
			Goods g = gs.getGoodsInfo(o.getGoodsId());
			o.setGoodsName(g.getGoodsName());
			o.setGoodsPic(g.getGoodsPic());
			o.setGoodsPrice(g.getGoodsPrice());
			o.setGoodsSetMeal(g.getGoodsSetMeal());
			o.setGoodsVersion(g.getGoodsVersion());
			ol.add(o);
		}
		return ol;
	}

	/*
	 * 删除订单
	 */
	public boolean dropOrders(int ordersId) {
		return (od.delOrders(ordersId));
	}

}
