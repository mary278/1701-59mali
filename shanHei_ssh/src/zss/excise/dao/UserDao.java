package zss.excise.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import zss.excise.entity.User;
import zss.excise.utils.HibernateUtils;

public class UserDao {

	private User user;
	private Session session = HibernateUtils.getSession();

	/*
	 * 查询用户信息
	 */
	public User getUser(String userName) {

		Query query = session.createQuery("from User where userName=?");
		query.setParameter(0, userName);
		user = (User) query.list().get(0);
		return user;
	}

	public boolean saveOrUpdateUser(User u) {
		Transaction tx = session.beginTransaction();
		try {
			/*
			 * user = new User(); user.setUserName(u.getUserName());
			 * user.setUserPassword(u.getUserPassword());
			 * user.setUserPhone(u.getUserPhone());
			 */
			session.saveOrUpdate(u);
			tx.commit();
			return true;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}

	}

}
