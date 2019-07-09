package com.oracle.shop.control;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.FavDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/fav")
public class FavControl {

	@Autowired
	private FavDAO dao;
	
	@RequestMapping("/add")
	public String addToFav(int pid,HttpSession  session){
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
			int userid=((Users)session.getAttribute("logineduser")).getUserid();
			int result=dao.addProductToFav(pid, userid, new Date().toLocaleString());
			System.out.println(result>0?"添加成功":"添加失败");
			return "redirect:list";
		}
	}
	
	@RequestMapping("/drop")
	public String dropToFav(int pid,HttpSession  session){
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
			int userid=((Users)session.getAttribute("logineduser")).getUserid();
			int result=dao.dropProductToFav(userid, pid);
			return "redirect:list";
		}
	}
	
	@RequestMapping("/list")
	public String list(Model m,HttpSession  session){
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
		int userid=((Users)session.getAttribute("logineduser")).getUserid();
		List<Goods> gs=dao.listAllProductsOfFav(userid);
		m.addAttribute("gs", gs);
		return "fav";
		}
	}
	
}
