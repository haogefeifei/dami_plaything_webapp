package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.ProDaoInf;
import com.demo.entity.Product;
import com.demo.entity.Psort;

@Service("ProServiceImpl")
public class ProServiceImpl implements ProServiceInf {
	@Resource(name="ProDaoImpl")
	private ProDaoInf dao;

	public ProDaoInf getDao() {
		return dao;
	}

	public void setDao(ProDaoInf dao) {
		this.dao = dao;
	}
	/**
	 * 查找商品的ID
	 * */
	@Override
	public Product findProductid(int psid) {
		// TODO Auto-generated method stub
		return dao.findProductid(psid);
	}
	/**
	 * 修改商品的状态
	 */
	@Override
	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		dao.updateProduct(p);
	}
	/**
	 * 根据ID查找相关的商品信息
	 */
	@Override
	public Product findProductId(Product p) {
		// TODO Auto-generated method stub
		return dao.findProductId(p);
	}
	/**
	 * 修改商品信息
	 */
	@Override
	public void updateProductmsg(Product p) {
		// TODO Auto-generated method stub
		dao.updateProductmsg(p);
	}

    /**
     * 
     * 查找--商品表--的商品分类关联的--商品分类表--
     * */
	@Override
	public List<Psort> queryPsort() {
		// TODO Auto-generated method stub
		return dao.queryPsort();
	}
}
