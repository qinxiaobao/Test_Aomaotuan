package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;

/**
 * 这就是基于mybatis框架书写的product模块dao借口，里面写了一个方法，查询所有商品信息方法
 * @author Administrator
 *
 */
@Mapper
public interface ProductDAO {

	@Select("select *  from goods")
	public List<Goods> listGoods();
	
}
