package com.demo.dao;

import java.util.List;
import com.demo.entity.Psort;
import com.demo.util.Page;

/**
 * 商品分类操作接口
 * @author Damon
 *
 */
public interface PsortDaoInf {

	public void save(Psort psort);//保存商品种类
	public void update(Psort p);  //更新商品信息
	public List<Psort> findAll(Page page);//分页查询所有的商品种类
	public int findAllCount();//查询所有记录数
	public List<Psort> findAll();//查询所有的商品种类
	public Psort findByID(int commodityClassID);
	
}
