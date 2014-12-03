package com.demo.service;

import java.util.List;

import com.demo.entity.Master;

/**
 * 管理员业务接口
 * @author FeiFei
 *
 */
public interface AdminServiceInf {

	public void delete(int number);//根据主键删除记录
	public List<Master> findAll();       //查询所有记录
	public Master findById(int number); //根据主键编号查询记录
	public void insert(Master u); //插入新用户信息
	public void update(Master u);  //更新用户信息
	public Master findByNamePwd(Master u); //验证用户信息
	public boolean findByName(String name); //检查用户名是否被占用
	public List<Master> select();
	
}
