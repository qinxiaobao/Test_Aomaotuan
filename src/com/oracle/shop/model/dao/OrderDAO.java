package com.oracle.shop.model.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderDAO {

	@Insert("insert into orders(orderid,orderdate,orderstatus,address,remarks,userid,name) values(#{orderid},#{times},#{status},#{address},#{remark},#{userid},#{name})")
	public int addOrder(@Param("orderid") String orderid,@Param("userid") int userid,
			@Param("name") String name, @Param("address") String address,
			@Param("remark") String remark, @Param("status") String status,
			@Param("times") String times);
	
	@Insert("insert into items(itemnumber,goodsid,orderid) values(#{goodsNumber},#{goodsid},#{orderid})")
	public int addOrderItem(@Param("orderid")String orderid,@Param("goodsid")int goodsid,@Param("goodsNumber")int goodsNumber);
}