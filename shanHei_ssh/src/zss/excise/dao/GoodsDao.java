package zss.excise.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import zss.excise.entity.Goods;
import zss.excise.utils.HibernateUtils;

public class GoodsDao {

	private Goods goods;
	private Session session = HibernateUtils.getSession();
	private Query query;
	private List<Goods> goodsList;

	/*
	 * 通过pic得到商品详情
	 */
	public Goods getGoods(String goodsPic) {
		// try {
		System.out.println(goodsPic + "gd");
		query = session.createQuery("from Goods where goodsPic=?");
		query.setParameter(0, goodsPic);
		goods = (Goods) query.list().get(0);
		return goods;
		/*
		 * } catch (Exception e) { System.out.println(e.getMessage()); throw new
		 * RuntimeException(e); }
		 */
	}

	/*
	 * 通过id得到商品详情
	 */
	public Goods getGoods(int goodsId) {
		query = session.createQuery("from Goods where goodsId=?");
		query.setParameter(0, goodsId);
		goods = (Goods) query.list().get(0);
		return goods;
	}

	/*
	 * 搜索商品
	 */
	public List<Goods> searchGoods(String key) {

		query = session
				.createQuery("from Goods where goodsName like ? " + "or goodsIntroduce like ? or goodsColor like ? "
						+ "or goodsVersion like ? or goodsSetMeal like ? or goodsType like ?");
		for (int i = 0; i < 6; i++) {
			query.setParameter(i, "%" + key + "%");
		}
		goodsList = query.list();
		return goodsList;
	}

}
