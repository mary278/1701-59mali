package zss.excise.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import zss.excise.entity.Goods;
import zss.excise.entity.Orders;
import zss.excise.entity.User;
import zss.excise.service.GoodsService;
import zss.excise.service.OrdersService;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {

	private Orders orders = new Orders();
	private OrdersService os = new OrdersService();
	private GoodsService gs = new GoodsService();
	private HttpServletRequest request = ServletActionContext.getRequest();
	// private HttpServletResponse response =
	// ServletActionContext.getResponse();
	private HttpSession session = request.getSession(true);
	// private ActionContext context = ActionContext.getContext();
	// private Map<String, Object> session = context.getSession();

	@Override
	public Orders getModel() {
		// TODO Auto-generated method stub
		return orders;
	}

	/*
	 * 添加订单
	 */
	public String addOrders() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		int gid = Integer.parseInt(request.getParameter("goodsId"));
		Goods goods = gs.getGoodsInfo(gid);
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		if (os.addOrders(userName, goods)) {
			getOrdersList();
			request.setAttribute("msg", "添加成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "添加失败");
			return ERROR;
		}
	}

	/*
	 * 订单列表
	 */
	public String getOrdersList() {
		System.out.println(session.getAttribute("user"));
		if (session.getAttribute("user") == null) {
			return "login";
		}
		List<Orders> ordersList = null;
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		System.out.println(user.getUserName());
		String userName = user.getUserName();
		ordersList = os.getOrdersList(userName);
		session.setAttribute("ordersList", ordersList);
		System.out.println(ordersList);
		return SUCCESS;
	}

	/*
	 * 付钱之后，从订单中删除该记录
	 */
	public String dropOrders() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		int oid = Integer.parseInt(request.getParameter("ordersId"));
		if (os.dropOrders(oid)) {
			getOrdersList();
			request.setAttribute("msg", "购买成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "购买失败");
			return ERROR;
		}
	}

}
