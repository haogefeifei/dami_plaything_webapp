package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.IndentproductDaoInf;
import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Product;

/**
 * 订单详细业务实现类
 * @author FeiFei
 *
 */
@Service("IndentproductServiceImpl")
public class IndentproductServiceImpl implements IndentproductServiceInf {

	@Resource(name="IndentproductDaoImpl")
	private IndentproductDaoInf indentproductdao;
	public IndentproductDaoInf getIndentproductdao() {
		return indentproductdao;
	}
	public void setIndentproductdao(IndentproductDaoInf indentproductdao) {
		this.indentproductdao = indentproductdao;
	}
	/**
	 * 新增订单详情
	 * @param i
	 */
	public void addIndent(Indentproduct i) {
		indentproductdao.addIndent(i);

	}

	/**
	 * 删除数据
	 * @param id
	 */
	public void deleteIndent(int id) {
		indentproductdao.deleteIndent(id);

	}

	/**
	 * 修改订单详情
	 * @param i
	 */
	public void updateIndent(Indentproduct i) {
		indentproductdao.updateIndent(i);

	}
	
	/**
	 * 根据订单查询订单详细
	 * @param i 订单
	 * @return 
	 */
	public List<Indentproduct> findByIndent(Indent i) {
		return indentproductdao.findByIndent(i);
		
	}
	public List<Product> tongji() {
		return indentproductdao.tongji();
	}
	public List<Indentproduct> tongjinumber() {
		return indentproductdao.tongjinumber();
	}



}
