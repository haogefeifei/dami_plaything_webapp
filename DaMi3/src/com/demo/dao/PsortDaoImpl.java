package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.demo.entity.Psort;
import com.demo.util.Page;

/**
 * 商品分类操作实现类
 * @author Damon
 *
 */
@Repository("PsortDaoImpl")
public class PsortDaoImpl extends HibernateDaoSupport implements PsortDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	/**
	 * 插入新分类
	 */
	public void save(Psort psort) {
		
		getHibernateTemplate().save(psort);

	}
	
	/**
	 * 更新商品分类
	 */
	public void update(Psort p) {
	
		getHibernateTemplate().update(p);
		
	}

	
	@SuppressWarnings("unchecked")
	public List<Psort> findAll(Page page) {
		Query query = this.getSession().createQuery("from Psort");
		query.setFirstResult(page.getBeginIndex());	//设置查询起点位置
		query.setMaxResults(page.getEveryPage());	//设置查询最大值
		return query.list();		//返回查询结果
	}

	/**
	 * 返回记录数
	 */
	public int findAllCount() {
		
		return getHibernateTemplate().find("from Psort").size();
	}

	/**
	 *查询所有的商品种类
	 */
	@SuppressWarnings("unchecked")
	public List<Psort> findAll() {
	
		return getHibernateTemplate().find("from Psort");
	}

	/**
	 *根据id查询
	 */
	public Psort findByID(int commodityClassID) {
		
		return  this.getHibernateTemplate().load(Psort.class, commodityClassID);
		
	}

	

}
