package com.demo.dao;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.util.Page;

/**
 * 商品操作类
 * @author Damon
 *
 */
@Repository("ProductDaoImpl")
public class ProductDaoImpl extends HibernateDaoSupport implements ProductDaoInf {

	@Resource(name="sessionFactory")
	public void setSupperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	/**
	 * 根据主键删除记录
	 */
	public void delete(Integer number) {

		Product product = (Product)getHibernateTemplate().load(Product.class, number);
		getHibernateTemplate().delete(product);

	}

	/**
	 * 查询所有记录
	 */
	@SuppressWarnings("unchecked")
	public List<Product> findAll() {

		return getHibernateTemplate().find("from Product");
	}

	/**
	 * 根据主键编号查询记录
	 */
	public Product findById(Integer number) {
		
		Product product = (Product)getHibernateTemplate().get(Product.class, number);
		
		return product;
	}

	/**
	 * 插入新商品信息
	 */
	public void insert(Product p) {
		
		getHibernateTemplate().save(p);
		
	}

	/**
	 * 更新商品信息
	 */
	public void update(Product p) {
		
		getHibernateTemplate().update(p);

	}
	
	/**
	 * 返回记录数
	 */
	public int findAllCount() {

		return getHibernateTemplate().find("from Product").size();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Product> findAll(Page page) {
		Query query = this.getSession().createQuery("from Product");
		query.setFirstResult(page.getBeginIndex());	//设置查询起点位置
		query.setMaxResults(page.getEveryPage());	//设置查询最大值
		return query.list();		//返回查询结果
	}
	
	/**
	 * 根据商品分类查询结果(分页)
	 * @param 商品分类，分页
	 * @return 查询结果集合
	 */
	@SuppressWarnings("unchecked")
	public List<Product> findByClass(Psort psort, Page page) {
		
		Query query = this.getSession().createQuery("from Product where psort =:psort");
		query.setEntity("psort", psort);
		query.setFirstResult(page.getBeginIndex());	//设置查询起点位置
		query.setMaxResults(page.getEveryPage());	//设置查询最大值
		return query.list();		//返回查询结果
	}
	
	
	
	/**
	 * 根据商品名称模糊分页查询商品
	 * @param productame 查询字符
	 * @param page 分页
	 * @return 查询商品结果List集合
	 */
	@SuppressWarnings("unchecked")
	public List<Product> findByName(String productame, Page page) {
		
		String hql="from Product as p where p.pname like :pname"; //参数名称查询 
		Query query = this.getSession().createQuery(hql);
		query.setString("pname", "%"+productame+"%"); 
		query.setFirstResult(page.getBeginIndex());	//设置查询起点位置
		query.setMaxResults(page.getEveryPage());	//设置查询最大值
		return query.list();
	}
	
	/**
	 * 查询搜索结果记录数
	 * @param pname 搜索字段
	 * @return 返回记录条数
	 */
	public int findByNameCount(String pname) {
		String hql="from Product as p where p.pname like :pname"; //参数名称查询 
		Query query = this.getSession().createQuery(hql);
		query.setString("pname", "%"+pname+"%"); 
		return query.list().size();
	}
	
	
	public int findAllPsortCount(Psort psort) {
		
		Query query = this.getSession().createQuery("from Product where psort =:psort");
		query.setEntity("psort", psort);
		return query.list().size();		//返回查询结果
	}
	public Product selectproductid(int pd) {
		Criteria ct = getSession().createCriteria(Product.class)
								.add(Restrictions.eq("psid", pd));
		return (Product)ct.uniqueResult();
	}
	
}
