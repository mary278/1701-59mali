package zss.excise.service;

import zss.excise.dao.UserDao;
import zss.excise.entity.User;

public class UserService {
	private UserDao ud = new UserDao();
	private User u;

	/*
	 * 查询:
	 */
	public User getUser(User user) {
		String userName = user.getUserName();
		return (ud.getUser(userName));
	}

	/*
	 * 登录:
	 */
	public User login(User user) {
		String userName = user.getUserName();
		String password = user.getUserPassword();
		u = ud.getUser(userName);
		String userPassword = u.getUserPassword();
		if (userPassword.equals(password)) {
			return u;
		} else {
			return null;
		}
	}

	public boolean regist(User user) {
		if (ud.saveOrUpdateUser(user)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean updateUser(User user) {
		if (ud.saveOrUpdateUser(user)) {
			return true;
		} else {
			return false;
		}
	}
}
