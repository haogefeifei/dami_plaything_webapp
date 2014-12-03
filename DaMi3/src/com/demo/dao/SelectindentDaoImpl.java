package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.entity.Indent;
import com.demo.entity.Page;

@Repository("SelectindentDaoImpl")
public class SelectindentDaoImpl extends HibernateDaoSupport implements SelectindentDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public List<Indent> find(Page page, Indent indent) {
		String hql = "from Indent";
		Query query = getSession().createQuery(hql);
		query.setFirstResult((10*(page.getPagenow()-1)));
	    query.setMaxResults(10);
		return query.list();
	}

	@Override
	public long count(Indent indent) {
		String hql = "select count(*) from Indent";
		Query query = getSession().createQuery(hql);
		return (Long)query.uniqueResult();
	}

	@Override
	public List<Indent> finds(Page page, Indent indent, int info) {
		String hql = "from Indent where info=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0,info);
		query.setFirstResult((10*(page.getPagenow()-1)));
	    query.setMaxResults(10);
		return query.list();
	}

	@Override
	public long counts(Indent indent,int info) {
		String hql = "select count(*) from Indent where info=?";
		Query query = getSession().createQuery(hql);
		query.setInteger(0,info);
		return (Long)query.uniqueResult();
	}

	@Override
	public List<Indent> findss(Page page, Indent indent, int info,
			String totalprices) {
		String hql = "from Indent where info=? and totalprices like ? ";
		Query query = getSession().createQuery(hql);		
		query.setInteger(0,info);
		query.setString(1,"%"+totalprices+"%");
		query.setFirstResult((10*(page.getPagenow()-1)));
	    query.setMaxResults(10);
		return query.list();
	}

	@Override
	public long countss(Indent indent,int info, String totalprices) {
		String hql = "select count(*) from Indent where info=? and totalprices like ?";
		Query query = getSession().createQuery(hql);
		query.setString(1,"%"+totalprices+"%");
		query.setInteger(0,info);
		return (Long)query.uniqueResult();
	}

	@Override
	public List<Indent> findall(Page page, Indent indent, String totalprices) {
		String hql = "from Indent where totalprices like ? ";
		Query query = getSession().createQuery(hql);		
		query.setString(0,"%"+totalprices+"%");
		query.setFirstResult((10*(page.getPagenow()-1)));
	    query.setMaxResults(10);
		return query.list();
	}

	@Override
	public long countall(Indent indent, String totalprices) {
		String hql = "select count(*) from Indent where totalprices like ?";
		Query query = getSession().createQuery(hql);
		query.setString(0,"%"+totalprices+"%");
		return (Long)query.uniqueResult();
	}
}
