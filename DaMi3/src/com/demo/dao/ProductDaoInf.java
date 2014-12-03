package com.demo.dao;

import java.util.List;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.util.Page;

/**
 * 商品操作接口
 * @author Damon
 *
 */
public interface ProductDaoInf {

	public void delete(Integer number);//根据主键删除记录
	public List<Product> findAll();       //查询所有记录
	public int findAllCount();//查询所有记录数
	public List<Product > findAll(Page page);//分页查询所有的商品
	public List<Product> findByClass(Psort psort,Page page);
	public int findAllPsortCount(Psort psort);//查询分类记录数
	public List<Product> findByName(String productame,Page page);//根据商品名称模糊分页查询商品
	public Product findById(Integer number); //根据主键编号查询记录
	public void insert(Product p); //插入新商品信息
	public void update(Product p);  //更新商品信息
	public int findByNameCount(String pname);//查询搜索结果记录数
	
	public Product selectproductid(int pd);
	
}
