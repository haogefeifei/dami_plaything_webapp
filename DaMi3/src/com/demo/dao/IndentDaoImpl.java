package com.demo.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.demo.entity.Indent;
import com.demo.util.Page;


/**
 * 订单操作实现类
 * @author FeiFei
 *
 */
@Repository("IndentDaoImpl")
public class IndentDaoImpl extends HibernateDaoSupport implements IndentDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
	
	/**
	 * 根据用户id查询订单
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Indent> findById(int id) {
		//根据用户id，按时间降序查询出订单
		String hql="from Indent i where i.loginuser.userid="+id +"order by i.time desc";
		List<Indent> indents = getHibernateTemplate().find(hql);		
		
		return indents;
	}

	/**
	 * 新增订单
	 * @param i
	 */
	public Indent addIndent(Indent i) {
		System.out.println("---------"+i.getInfo());
		int id =   (Integer) getHibernateTemplate().save(i);
		
		Indent indent = getHibernateTemplate().get(Indent.class, id);
		return indent;

	}

	/**
	 * 删除数据库
	 * @param id
	 */
	public void deleteIndent(int id) {
		Indent i = getHibernateTemplate().get(Indent.class, id);
		getHibernateTemplate().delete(i);

	}

	/**
	 * 修改订单
	 * @param i
	 */
	public void updateIndent(Indent i) {
		getHibernateTemplate().update(i);

	}


	/**
	 * 根据订单状态查询
	 * @param id 用户id
	 * @param Status 订单状态
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Indent> findByStatus(int id, int Status) {
			
		String hql="from Indent i where i.loginuser.userid="+id +"and i.info=" + Status+"order by i.time desc";
		List<Indent> indents = getHibernateTemplate().find(hql);		
		
		return indents;
	}


	/**
	 * 根据订单id查询订单
	 * @param id
	 * @return 
	 */
	public Indent findIndent(int id) {
		
	 	Indent i = (Indent)getHibernateTemplate().get(Indent.class, id);
		return i;
	}


	/**
	 * 分页查询所有订单
	 */
	@SuppressWarnings("unchecked")
	public List<Indent> findAll(Page page) {
		Query query = this.getSession().createQuery("from Indent i order by i.time desc");
		query.setFirstResult(page.getBeginIndex());	//设置查询起点位置
		query.setMaxResults(page.getEveryPage());	//设置查询最大值
		return query.list();	
	}


	/**
	 * 返回所有订单记录数
	 */
	public int findAllCount() {
		
		return getHibernateTemplate().find("from Indent").size();
	}


	@SuppressWarnings("unchecked")
	public List<Indent> findByStatus(int Status) {
		String hql="from Indent i where i.info=" + Status+"order by i.time desc";
		List<Indent> indents = getHibernateTemplate().find(hql);		
		
		return indents;
	}

}
