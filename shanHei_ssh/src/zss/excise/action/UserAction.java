package zss.excise.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import zss.excise.entity.User;
import zss.excise.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private User user = new User();
	private UserService us = new UserService();
	private ActionContext context = ActionContext.getContext();
	private Map<String, Object> session = context.getSession();

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public String login() {
		if (user.getUserName().equals("") || user.getUserPassword().equals("")) {
			context.put("msg", "用户名或密码为空，请输入!");
			return "error";
		} else {
			user = us.login(user);
			if (user != null) {
				session.put("user", user);
				context.put("msg", "登录成功!");
				return "success";
			} else {
				context.put("msg", "用户名或密码错误，请重新输入!");
				return "error";
			}
		}
	}

	public String regist() {
		if (us.regist(user)) {
			session.put("user", user);
			return "success";
		} else
			return INPUT;
	}

	public String logout() {
		session.remove("user");
		return SUCCESS;
	}

	public String update() {
		if (user.getUserPassword() != null) {
			String password = user.getUserPassword();
			user = (User) session.get("user");
			user.setUserPassword(password);
			if (us.updateUser(user)) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} else if (user.getUserPhone() != null) {
			String phone = user.getUserPhone();
			user = (User) session.get("user");
			user.setUserPhone(phone);
			if (us.updateUser(user)) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} else {
			return ERROR;
		}
	}
}
