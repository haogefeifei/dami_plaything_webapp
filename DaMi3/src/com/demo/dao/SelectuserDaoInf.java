package com.demo.dao;

import java.util.List;

import com.demo.entity.Loginuser;
import com.demo.entity.Page;

public interface SelectuserDaoInf {

	public List<Loginuser> find(Page page,Loginuser loginuser);//查询客户信息
	
	public long count(Loginuser loginuser);
	
	public List<Loginuser> selectuser(String name);//根据姓名模糊查询
}
