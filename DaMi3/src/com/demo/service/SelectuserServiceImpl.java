package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.SelectuserDaoInf;
import com.demo.entity.Loginuser;
import com.demo.entity.Page;

@Service("SelectuserServiceImpl")
public class SelectuserServiceImpl implements SelectuserServiceInf {

	@Resource(name="SelectuserDaoImpl")
	private SelectuserDaoInf dao;

	@Override
	public List<Loginuser> find(Page page, Loginuser loginuser) {
		return dao.find(page, loginuser);
	}

	@Override
	public long count(Loginuser loginuser) {
		return dao.count(loginuser);
	}

	@Override
	public List<Loginuser> selectuser(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
