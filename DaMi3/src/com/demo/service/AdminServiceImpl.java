package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.demo.dao.MasterDaoInf;
import com.demo.entity.Master;

/**
 * 管理员业务实现类
 * @author FeiFei
 *
 */
@Service("AdminServiceImpl")
public class AdminServiceImpl implements AdminServiceInf {

	@Resource(name="MasterDaoImpl")
	private MasterDaoInf admindao;
	public MasterDaoInf getAdmindao() {
		return admindao;
	}
	public void setAdmindao(MasterDaoInf admindao) {
		this.admindao = admindao;
	}
	
	/**
	 * 根据主键删除记录
	 */
	public void delete(int number) {
		admindao.delete(number);

	}

	/**
	 * 查询所有记录
	 */
	public List<Master> findAll() {
		
		return admindao.findAll();
	}

	/**
	 * 根据主键编号查询记录
	 */
	public Master findById(int number) {
		
		return admindao.findById(number);
	}

	/**
	 * 插入新用户信息
	 */
	public void insert(Master u) {
		admindao.insert(u);

	}

	/**
	 * 更新用户信息
	 */
	public void update(Master u) {
		admindao.update(u);

	}

	/**
	 * 验证用户信息
	 */
	public Master findByNamePwd(Master u) {
		
		return admindao.findByNamePwd(u);
	}

	/**
	 * 检查用户名是否被占用
	 */
	public boolean findByName(String name) {
		
		return admindao.findByName(name);
	}

	public List<Master> select() {
		return admindao.select();
	}

}
