package com.oracle.shop.model.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Users;
/**
 * 定一个userdao接口，用来给用户模块提供数据库操作的方法
 * @author Administrator
 *
 */

@Mapper
public interface UserDAO {
	/**
	 * 这是处理用户登录的dao方法
	 * @param username
	 * @param password
	 * @return
	 */
	@Select("select * from users where username=#{username} and password=#{password}")
	public Users login(@Param("username")String username,@Param("password")String password);

}
