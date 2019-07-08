package com.oracle.shop.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.ProductDAO;
import com.oracle.shop.model.javabean.Goods;

/**
 * 杩欐牱瀹氫箟鐨勪竴涓櫘閫歫ava绫诲氨鍙樻垚浜嗕竴涓猻pringmvc妗嗘灦涓嬮潰鐨勪竴涓悗鍙扮粍浠讹紙鍙互瀵瑰墠鍙扮綉椤垫彁渚涙湇鍔★級
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductDAO dao;
	
	/**
	 * 杩欏氨鏄竴涓猻pringmvc涓嬮潰鐨勪竴涓悗鍙癱ontroller鐨勪竴涓悗鍙版柟娉�
	 * @return
	 */
	@RequestMapping("/list")
	public String listProduct(Model  m){
		System.out.println("杩欐槸杩涘叆浜嗗悗鍙扮殑鏂规硶锛�");
		List<Goods>  gs=dao.listGoods();
		System.out.println(gs);
		m.addAttribute("gs", gs);//璁插悗鍙癲ao鏌ヨ鍑烘潵鐨勪竴涓泦鍚堥噷闈㈢殑鍟嗗搧淇℃伅瀛樺偍鍒颁竴涓洅瀛愰噷
		return "index";
	}

}
