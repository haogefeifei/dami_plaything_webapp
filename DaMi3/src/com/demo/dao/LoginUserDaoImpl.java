package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.demo.entity.Loginuser;

/**
 * 用户操作实现类
 * @author Damon
 *
 */
@Repository("LoginUserDaoImpl")
public class LoginUserDaoImpl extends HibernateDaoSupport implements LoginUserDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	//根据主键删除记录
	@Override
	public void delete(Integer number) {
		
		Loginuser user = (Loginuser)getHibernateTemplate().load(Loginuser.class, number);
		getHibernateTemplate().delete(user);

	}

	 //查询所有记录
	@SuppressWarnings("unchecked")
	public List<Loginuser> findAll() {
		
		return getHibernateTemplate().find("from Loginuser");
	}

	//根据主键编号查询记录
	public Loginuser findById(Integer number) {
		
		Loginuser user = (Loginuser)getHibernateTemplate().load(Loginuser.class, number);
		return user;
	}

	//插入新用户信息
	public void insert(Loginuser u) {
		
		getHibernateTemplate().save(u);

	}

	//更新用户信息
	public void update(Loginuser u) {
		
		getHibernateTemplate().update(u);

	}

	 //验证用户信息
	public Loginuser findByNamePwd(Loginuser u) {

		Loginuser user ;
		String hql="from Loginuser where username='"+u.getUsername()+"' and userpsw = '"+u.getUserpsw()+"'";
		Query query=getSession().createQuery(hql);
		user = (Loginuser)query.uniqueResult();
		
		//List<Loginuser> list = getHibernateTemplate().find("from Loginuser where username='"+u.getUsername()+"' and userpsw = '"+u.getUserpsw()+"'");
		
		return user;
	}

	//检查用户名是否被占用
	@SuppressWarnings("unchecked")
	public boolean findByName(String name) {
		List<Loginuser> list = getHibernateTemplate().find("from Loginuser where username='"+name+"'");
		
		if(list.isEmpty()){
			return true;
		}
		else{
			return false;
		}
	}
}
