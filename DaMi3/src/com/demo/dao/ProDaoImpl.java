package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.entity.Product;
import com.demo.entity.Psort;

@Repository("ProDaoImpl")
public class ProDaoImpl extends HibernateDaoSupport implements ProDaoInf {
	
	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	/**
	 * 查找商品的ID
	 * */
	@Override
	public Product findProductid(int psid) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Product.class, psid);
	}
	/**
	 * 修改商品的状态
	 */
	@Override
	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(p);
	}
	/**
	 * 根据ID查找相关的商品信息
	 */
	@Override
	public Product findProductId(Product p) {
		// TODO Auto-generated method stub
		String hql="from Product p where p.psid=?";
		Query query=getSession().createQuery(hql);
		query.setInteger(0, p.getPsid());
		return (Product)query.uniqueResult();
	}
	/**
	 * 修改商品信息
	 */
	@Override
	public void updateProductmsg(Product p) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(p);
	}
     /**
      * 
      * 查找--商品表--的商品分类关联的--商品分类表--
      * */
	@Override
	public List<Psort> queryPsort() {
		// TODO Auto-generated method stub
		String hql="from Psort";
		Query query=getSession().createQuery(hql);
		return query.list();
	}

}
