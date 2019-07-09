package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;
@Mapper
public interface FavDAO {

	@Insert("insert into collectors(goodsid,userid,collecttime) values(#{goodsid},#{userid},#{datetime})")
	public int addProductToFav(@Param("goodsid")int goodsid,@Param("userid")int userid,@Param("datetime")String datetime);
	
	@Select("select *  from goods where goodsid in (select goodsid from collectors where userid=#{0})")
	public List<Goods> listAllProductsOfFav(int userid);
	
	@Delete("delete from collectors where goodsid=#{goodsid} and userid=#{userid}")
	public int dropProductToFav(@Param("userid")int userid,@Param("goodsid")int goodsid);
}

