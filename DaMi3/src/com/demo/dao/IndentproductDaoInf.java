package com.demo.dao;

import java.util.List;

import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Product;

/**
 * 订单详情操作接口
 * @author FeiFei
 *
 */
public interface IndentproductDaoInf {

	/**
	 * 新增订单详情
	 * @param i
	 */
	public void addIndent(Indentproduct i);
	/**
	 * 删除数据
	 * @param id
	 */
	public void deleteIndent(int id);
	/**
	 * 修改订单详情
	 * @param i
	 */
	public void updateIndent(Indentproduct i);
	/**
	 * 根据订单查询订单详细
	 * @param indent
	 * @return
	 */
	public List<Indentproduct> findByIndent(Indent indent);
	
	public List<Product> tongji();
	public List<Indentproduct> tongjinumber();
}
