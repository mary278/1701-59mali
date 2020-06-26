package zss.excise.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import zss.excise.entity.Cart;
import zss.excise.entity.Goods;
import zss.excise.entity.Orders;
import zss.excise.entity.User;
import zss.excise.service.CartService;
import zss.excise.service.GoodsService;
import zss.excise.service.OrdersService;

public class CartAction extends ActionSupport implements ModelDriven<Cart> {

	private Cart cart = new Cart();
	private Goods goods = new Goods();
	private Orders orders = new Orders();
	private OrdersService os = new OrdersService();
	private GoodsService gs = new GoodsService();
	private CartService cs = new CartService();
	private HttpServletRequest request = ServletActionContext.getRequest();
	// private HttpServletResponse response =
	// ServletActionContext.getResponse();
	private HttpSession session = request.getSession(true);
	// private ActionContext context = ActionContext.getContext();
	// private Map<String, Object> session = context.getSession();

	@Override
	public Cart getModel() {
		// TODO Auto-generated method stub
		return cart;
	}

	/*
	 * 添加到购物车
	 */
	public String addToCart() {

		if (session.getAttribute("user") == null) {
			return "login";
		}
		int gid = Integer.parseInt(request.getParameter("goodsId"));
		Goods goods = gs.getGoodsInfo(gid);
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		if (cs.addCart(userName, goods, 1)) {
			/*
			 * for (Cart l : cs.getCartList(userName)) { System.out.println(l);
			 * }
			 */
			session.setAttribute("cartList", cs.getCartList(userName));
			request.setAttribute("msg", "添加成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "添加失败");
			return ERROR;
		}
	}

	/*
	 * 修改数量
	 */
	public String upadteAmount() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		int gid = Integer.parseInt(request.getParameter("goodsId"));
		Goods goods = gs.getGoodsInfo(gid);
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		int cga = Integer.parseInt(request.getParameter("cartGoodsAmount"));
		if (cs.addCart(userName, goods, cga)) {
			session.setAttribute("cartList", cs.getCartList(userName));
			request.setAttribute("msg", "修改成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "修改失败");
			return ERROR;
		}
	}

	/*
	 * 订单列表
	 */
	public String getCartList() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		List<Cart> cartList = null;
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		cartList = cs.getCartList(userName);
		session.setAttribute("cartList", cartList);
		System.out.println(cartList);
		return SUCCESS;
	}

	/*
	 * 下单之后，从购物车中删除该记录
	 */
	public String dropCartOrders() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		int cid = Integer.parseInt(request.getParameter("cartId"));
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		cart = cs.getCart(userName, cid);
		int gid = cart.getGoodsId();
		goods = gs.getGoodsInfo(gid);
		if (cs.dropCartOrders(cid, userName, goods)) {
			session.setAttribute("cartList", cs.getCartList(userName));
			request.setAttribute("msg", "删除成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "删除失败");
			return ERROR;
		}
	}

	/*
	 * 从购物车中删除该记录
	 */
	public String dropCart() {
		if (session.getAttribute("user") == null) {
			return "login";
		}
		int cid = Integer.parseInt(request.getParameter("cartId"));
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		if (cs.dropCart(cid, userName)) {
			session.setAttribute("cartList", cs.getCartList(userName));
			request.setAttribute("msg", "下单成功");
			return SUCCESS;
		} else {
			request.setAttribute("msg", "下单失败");
			return ERROR;
		}
	}

}
