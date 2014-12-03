package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Product;

/**
 * 订单详情操作实现
 * @author FeiFei
 *
 */
@Repository("IndentproductDaoImpl")
public class IndentproductDaoImpl extends HibernateDaoSupport implements IndentproductDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	/**
	 * 新增订单详情
	 * @param i
	 */
	public void addIndent(Indentproduct i) {
		getHibernateTemplate().save(i);

	}

	/**
	 * 删除数据
	 * @param id
	 */
	public void deleteIndent(int id) {
		Indentproduct i = getHibernateTemplate().get(Indentproduct.class, id);
		getHibernateTemplate().delete(i);

	}

	/**
	 * 修改订单详情
	 * @param i
	 */
	public void updateIndent(Indentproduct i) {
		getHibernateTemplate().update(i);

	}

	/**
	 * 根据订单查询订单详细
	 * @param indent
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Indentproduct> findByIndent(Indent indent) {
		
		int id = indent.getId();
		String hql="from Indentproduct i where i.indent.id="+id;
		List<Indentproduct> indents = getHibernateTemplate().find(hql);		
		
		return indents;
	}


	public List<Product> tongji() {
		Criteria ct = getSession().createCriteria(Product.class);
		return ct.list();
	}

	public List<Indentproduct> tongjinumber() {
		Criteria ct = getSession().createCriteria(Indentproduct.class);
		return null;
	}

}
