package com.demo.service;

import java.util.List;

import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Product;

/**
 * 订单详细业务接口类
 * @author FeiFei
 *
 */
public interface IndentproductServiceInf {

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
	 * @param i
	 * @return 
	 */
	public List<Indentproduct> findByIndent(Indent i);
	
	public List<Product> tongji();
	public List<Indentproduct> tongjinumber();
}
