package com.oracle.shop.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.ProductDAO;
import com.oracle.shop.model.javabean.Goods;

/**
 * 这样定义的一个普通java类就变成了一个springmvc框架下面的一个后台组件（可以对前台网页提供服务）
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductDAO dao;
	
	/**
	 * 这就是一个springmvc下面的一个后台controller的一个后台方法
	 * @return
	 */
	@RequestMapping("/list")
	public String listProduct(Model  m,int page){
		System.out.println("这是进入了后台的方法，");
		int count=16;//后台规定的每页分的条数
		List<Goods>  gs=dao.listGoods((page-1)*count,count);
		m.addAttribute("gs", gs);//讲后台dao查询出来的一个集合里面的商品信息存储到一个盒子里
		
		int allCount=dao.getAllCountOfGoods();//查询数据库获取总行数
		int allPage=allCount%count==0?allCount/count:allCount/count+1;//总页数
		int perviousPage=page-1==0?1:page-1;
		int nextPage=page==allPage?allPage:page+1;
		m.addAttribute("perviousPage", perviousPage);
		m.addAttribute("nextPage", nextPage);
		m.addAttribute("allPage", allPage);
		m.addAttribute("nowPage", page);
		m.addAttribute("allCount", allCount);
		m.addAttribute("count", count);
		
		return "index";
	}
	
	@RequestMapping("/detail")
	public String detailProduct(Model m,int goodsid){
		Goods good=dao.selectGood(goodsid);
		
		m.addAttribute("oneGood", good);
		return "goodsdetail";
		
	}

}
