package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.demo.entity.Master;

/**
 * 管理员操作实现类
 * @author FeiFei
 *
 */
@Repository("MasterDaoImpl")
public class MasterDaoImpl extends HibernateDaoSupport implements MasterDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	/**
	 *根据主键删除记录 
	 */
	public void delete(int number) {
		Master user = (Master)getHibernateTemplate().load(Master.class, number);
		getHibernateTemplate().delete(user);

	}

	/**
	 * 查询所有记录
	 */
	@SuppressWarnings("unchecked")
	public List<Master> findAll() {
		return getHibernateTemplate().find("from Master");
	}

	/**
	 * 根据主键编号查询记录
	 */
	public Master findById(int number) {
		Master user = (Master)getHibernateTemplate().load(Master.class, number);
		return user;
	}

	/**
	 * 插入新用户信息
	 */
	public void insert(Master u) {
		getHibernateTemplate().save(u);


	}

	/**
	 * 更新用户信息
	 */
	public void update(Master u) {
		
		getHibernateTemplate().update(u);
	}

	/**
	 * 验证用户信息
	 */
	public Master findByNamePwd(Master u) {
		Master user ;
		String hql="from Master where mastername='"+u.getMastername()+"' and masterpsw = '"+u.getMasterpsw()+"'";
		Query query=getSession().createQuery(hql);
		user = (Master)query.uniqueResult();
		
		
		return user;
	}

	/**
	 * 检查用户名是否被占用
	 */
	@SuppressWarnings("unchecked")
	public boolean findByName(String name) {
		List<Master> list = getHibernateTemplate().find("from Master where mastername='"+name+"'");
		
		if(list.isEmpty()){
			return true;
		}
		else{
			return false;
		}
	}
	
	public List<Master> select() {
		Criteria ct = getSession().createCriteria(Master.class);
		return ct.list();
	}

}
