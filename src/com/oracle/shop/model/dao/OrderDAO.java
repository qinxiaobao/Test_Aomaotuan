package com.oracle.shop.model.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderDAO {

	@Insert("insert into orders(orderdate,orderstatus,address,remarks,userid,name) values(#{times},#{status},#{address},#{remark},#{userid},#{name})")
	public int addOrder(@Param("userid")int userid,@Param("name")String name,@Param("address")String address,@Param("remark")String remark,@Param("status")String status,@Param("times")String times);
}
