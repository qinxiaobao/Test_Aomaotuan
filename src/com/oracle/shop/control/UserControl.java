package com.oracle.shop.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.shop.model.dao.UserDAO;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/user")
public class UserControl {
	
	@Autowired
	private UserDAO dao;
	

	@RequestMapping("/login")
	public String login(String username,String password,HttpSession  session) {
		System.out.println("user -login");
		
		//1.获取用户在表单上填写的账户资料
		System.out.println(username+"\t"+password);
		
		//2.查询数据库是否存在这个对应的账户和密码
		Users  u=dao.login(username, password);
		
		System.out.println(u);
		
		//3.判断，如果存在则跳转到首页，否则跳回到登录
		if(u==null){
			System.out.println("login fail");
			return "login";
		}else{
			System.out.println("login success");
			//应该讲登录成功的用户资料存储在session，这样页面可以访问登陆后的用户信息
			session.setAttribute("logineduser", u);
			return "index";
		}
		
	}
	
	@RequestMapping("/out")
	public String out(HttpSession  session) {
			session.invalidate();
			return "index";
	} 

	@RequestMapping("/register")
	public String register(String username,String password,String nickname) {
		System.out.println("user -register");
		//1.先获取用户在表单页面上填写的要注册的用户信息
		
		//2.调用dao里面的方法将这个心注册的用户资料插入到数据库表中
		int result=dao.addUser(username, password, nickname);
		if(result>0){
			return "login";
		}else{
			return "register";
		}
	}
	
	
	@RequestMapping("/updatePassword")
	public String updatePassword(){
		return "";
	}
}
