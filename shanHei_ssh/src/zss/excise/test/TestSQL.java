package zss.excise.test;

import java.util.List;

import org.junit.Test;

import zss.excise.dao.GoodsDao;
import zss.excise.dao.UserDao;
import zss.excise.entity.Goods;
import zss.excise.entity.User;
import zss.excise.service.GoodsService;
import zss.excise.service.UserService;

public class TestSQL {

	User user = new User();
	UserDao ud = new UserDao();
	UserService us = new UserService();

	Goods goods = new Goods();
	GoodsDao gd = new GoodsDao();
	GoodsService gs = new GoodsService();
	List<Goods> gl = null;
	// GoodsAction ga = new GoodsAction();

	@Test
	public void addPeople() {
		user = new User();
		user.setUserName("zss");
		user.setUserPassword("123456");
		user.setUserPhone("17307970133");
		us.regist(user);
	}

	@Test
	public void getPeople() {
		user = new User();
		user.setUserName("zss");
		user.setUserPassword("123456");
		System.out.println(us.login(user));
	}

	@Test
	public void getGoodsInfo() {
		goods = new Goods();
		String pic = "vivo.jpg";
		goods = gs.getGoodsInfo(pic);
		System.out.println(goods);
	}

	@Test
	public void getGoodsList() {
		goods = new Goods();
		String key = "红色";
		gl = gs.getGoodsList(key);
		System.out.println(gl);
	}
}
