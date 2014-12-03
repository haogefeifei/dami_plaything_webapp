package com.demo.service;

import java.util.List;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.util.Page;
import com.demo.util.Result;

public interface ProductServiceInf {

	public void delete(Integer number);//根据主键删除记录
	public List<Product> findAll();       //查询所有记录
	public Result find(Psort sort , Page page);       //根据分类查询记录
	public Product findById(Integer number); //根据主键编号查询记录
	public void insert(Product p); //插入新商品信息
	public void update(Product p);  //更新商品信息
	public Result findAllCommodity(Page page);
	public Result findByName(String productame, Page page) ;//根据商品名称模糊分页查询商品
	public List<Psort> findAllPsort(); //查询所有商品分类
	public Psort findPsort(int pid);//根据分类id获取分类对象
	public Product selectproductid(int pd);

	
}
