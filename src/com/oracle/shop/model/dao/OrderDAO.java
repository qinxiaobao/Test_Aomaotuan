package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Items;
import com.oracle.shop.model.javabean.Orders;

@Mapper
public interface OrderDAO {

	@Insert("insert into orders(orderid,orderdate,orderstatus,address,remarks,userid,name) values(#{orderid},#{times},#{status},#{address},#{remark},#{userid},#{name})")
	public int addOrder(@Param("orderid") String orderid,@Param("userid") int userid,
			@Param("name") String name, @Param("address") String address,
			@Param("remark") String remark, @Param("status") String status,
			@Param("times") String times);
	
	@Insert("insert into items(itemnumber,goodsid,orderid) values(#{goodsNumber},#{goodsid},#{orderid})")
	public int addOrderItem(@Param("orderid")String orderid,@Param("goodsid")int goodsid,@Param("goodsNumber")int goodsNumber);
	
	//跳转到订单详情页面的
	@Select("select * from  orders where userid=#{0}")
	public List<Orders> listOrders(int userid);
	
	@Select("select *  from items where orderid=#{0}")
	public List<Items>  listItemsByOrderId(String orderid);
	
	@Select("select * from goods where goodsid=#{0}")
	public Goods getGoodsByGoodsid(int goodsid);
}