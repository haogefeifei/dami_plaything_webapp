package com.demo.dao;

import java.util.List;
import com.demo.entity.Loginuser;

/**
 * 用户表操作接口
 * @author Damon
 *
 */
public interface LoginUserDaoInf {

	public void delete(Integer number);//根据主键删除记录
	public List<Loginuser> findAll();       //查询所有记录
	public Loginuser findById(Integer number); //根据主键编号查询记录
	public void insert(Loginuser u); //插入新用户信息
	public void update(Loginuser u);  //更新用户信息
	public Loginuser findByNamePwd(Loginuser u); //验证用户信息
	public boolean findByName(String name); //检查用户名是否被占用
	
}
