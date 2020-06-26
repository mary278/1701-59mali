package zss.excise.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import zss.excise.entity.Goods;
import zss.excise.service.GoodsService;

public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {

	private Goods goods = new Goods();
	private GoodsService gs = new GoodsService();
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession(true);
	// private ActionContext context = ActionContext.getContext();
	// private Map<String, Object> session = context.getSession();

	@Override
	public Goods getModel() {
		// TODO Auto-generated method stub
		return goods;
	}

	/*
	 * 商品详情页面跳转
	 */
	public String getGoodsInfo() {
		String goodsPic = request.getParameter("goodsPic");
		System.out.println(goodsPic);
		goods = gs.getGoodsInfo(goodsPic);
		session.setAttribute("goods", goods);
		return SUCCESS;
	}

	/*
	 * 从搜索框搜索商品
	 */
	public String getGoodsList() {

		List<Goods> goodsList = null;
		String key = request.getParameter("key");
		System.out.println(key + "action");
		goodsList = gs.getGoodsList(key);
		session.setAttribute("goodsList", goodsList);
		System.out.println(goodsList);
		return SUCCESS;
	}

}
