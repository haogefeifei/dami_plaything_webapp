package com.demo.dao;

import java.util.List;

import com.demo.entity.Indent;
import com.demo.util.Page;

/**
 * 订单操作接口
 * @author FeiFei
 *
 */
public interface IndentDaoInf {

	/**
	 * 分页查询所有订单
	 * @return
	 */
	public List<Indent> findAll(Page page);
	/**
	 * 返回订单记录数
	 */
	public int findAllCount() ;
	/**
	 * 根据用户id查询所有订单
	 * @return
	 */
	public List<Indent> findById(int id);
	/**
	 * 根据订单状态查询
	 * @param id 用户id
	 * @param Status 订单状态
	 * @return
	 */
	public List<Indent> findByStatus(int id , int Status);
	public List<Indent> findByStatus(int Status);
	/**
	 * 新增订单
	 * @param i
	 */
	public Indent addIndent(Indent i);
	/**
	 * 删除数据库
	 * @param id
	 */
	public void deleteIndent(int id);
	/**
	 * 修改订单
	 * @param i
	 */
	public void updateIndent(Indent i);
	
	/**
	 * 根据订单id查询订单
	 * @param id
	 * @return
	 */
	public Indent findIndent(int id);
	
}
