 package com.demo.service;

import java.util.List;

import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Shopcart;
import com.demo.util.Page;
import com.demo.util.Result;

/**
 * 订单业务接口类
 * @author FeiFei
 *
 */
public interface IndentServiceInf {


		/**
		 * 根据用户id查询所有订单
		 * @return
		 */
		public List<Indent> findById(int id);
		/**
		 * 新增订单
		 * @param i
		 */
		public Indent addIndent(Indent i ,List<Shopcart> sp);
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
		 * 根据订单状态查询
		 * @param id 用户id
		 * @param Status 订单状态
		 * @return
		 */
		public List<Indent> findByStatus(int id , int Status);
		
		/**
		 * 根据订单状态查询
		 * @param Status
		 * @return
		 */
		public List<Indent> findByStatus(int Status);
		/**
		 * 查询订单详细
		 * @param indent 订单
		 * @return
		 */
		public List<Indentproduct> findIndentproduct(Indent indent);
		
		/**
		 * 根据订单id查询订单
		 * @param id
		 * @return
		 */
		public Indent findIndent(int id);
		
		/**
		 * 分页查询所有订单
		 * @param page
		 * @return
		 */
		public Result findIndentByPage(Page page);
		
	
	}
