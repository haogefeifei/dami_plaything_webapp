package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.entity.Loginuser;
import com.demo.entity.Page;

@Repository("SelectuserDaoImpl")
public class SelectuserDaoImpl extends HibernateDaoSupport implements SelectuserDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public List<Loginuser> selectuser(String name) {
		String hql = "from Loginuser where username like %?%";
		Query query = getSession().createQuery(hql);
		query.setString(0,name);
		return query.list();
	}

	@Override
	public List<Loginuser> find(Page page, Loginuser loginuser) {
		String hql = "from Loginuser";
		Query query = getSession().createQuery(hql);
		query.setFirstResult((10*(page.getPagenow()-1)));
	    query.setMaxResults(10);
		return query.list();
	}

	@Override
	public long count(Loginuser loginuser) {
		String hql = "select count(*) from Loginuser";
		Query query = getSession().createQuery(hql);
		return (Long)query.uniqueResult();
	}

}
