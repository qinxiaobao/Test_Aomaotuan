package com.oracle.shop.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.CarDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Shopcart;
import com.oracle.shop.model.javabean.Users;
/**
 * 购物车模块的后台control
 * @author Administrator
 *
 */

@Controller
@RequestMapping("/car")
public class CarControl {
	
	@Autowired
	private CarDAO dao;

	@RequestMapping("/add")
	public String addProductToCar(int pid,HttpSession session){
		//判断是否登录，没有登录，直接跳转到登录页面
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
			//从session中获取登录的用户编号
			int userid=((Users)session.getAttribute("logineduser")).getUserid();
			
			//调用dao方法将当前商品添加到购物车表中
			
			/****
			 * 在添加之前先查询该用户的购物车表里面是否有这个商品，
			 * 如果有应该查处之前的数量，将数量加1然后修改到购物车表
			 * 如果没有，则直接执行添加到购物车表
			 * 
			 * ???
			 */
			
			int result=dao.addProduct(userid, pid);
			System.out.println(result>0?"添加成功":"添加失败");
			
			
		return "redirect:list";
		}
	}
	/**
	 * 这是查询用户下的多有购物车商品信息的方法
	 * @param session
	 * @param m
	 * @return
	 */
	@RequestMapping("/list")
	public String listCars(HttpSession session,Model  m){
		System.out.println("list cars");
		
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
		//从session中获取登录的用户编号
		int userid=((Users)session.getAttribute("logineduser")).getUserid();
		Map<Goods, Integer> detailCars=new HashMap<>();
		
		
		List<Shopcart> sc=dao.listCartsByUserId(userid);
		
		for(Shopcart s:sc){
			detailCars.put(dao.getGoodsByGoodsId(s.getGoodsid()), s.getCarnumber());
		}
		m.addAttribute("sc", detailCars);
		return "cart";
		}
	}
}
