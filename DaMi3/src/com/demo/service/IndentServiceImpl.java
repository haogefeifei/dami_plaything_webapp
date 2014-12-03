package com.demo.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.IndentDaoInf;
import com.demo.dao.IndentproductDaoInf;
import com.demo.dao.ShopCartDaoInf;
import com.demo.entity.Indent;
import com.demo.entity.Indentproduct;
import com.demo.entity.Product;
import com.demo.entity.Shopcart;
import com.demo.util.DingdanStatus;
import com.demo.util.Page;
import com.demo.util.PageUtil;
import com.demo.util.Result;

/**
 * 订单业务实现类
 * @author FeiFei
 *
 */
@Service("IndentServiceImpl")
public class IndentServiceImpl implements IndentServiceInf {

	@Resource(name="IndentDaoImpl")
	private IndentDaoInf indentdao;
	@Resource(name="IndentproductDaoImpl")
	private IndentproductDaoInf indentproductdao;
	@Resource(name="ShopCartDaoImpl")
	private ShopCartDaoInf shoppingcartdao;
	public IndentDaoInf getIndentdao() {
		return indentdao;
	}
	public void setIndentdao(IndentDaoInf indentdao) {
		this.indentdao = indentdao;
	}
	public IndentproductDaoInf getIndentproductdao() {
		return indentproductdao;
	}
	public void setIndentproductdao(IndentproductDaoInf indentproductdao) {
		this.indentproductdao = indentproductdao;
	}
	public ShopCartDaoInf getShoppingcartdao() {
		return shoppingcartdao;
	}
	public void setShoppingcartdao(ShopCartDaoInf shoppingcartdao) {
		this.shoppingcartdao = shoppingcartdao;
	}
	
	@Override
	public List<Indent> findById(int id) {
		
		return indentdao.findById(id);
	}

	@Override
	public Indent addIndent(Indent i ,List<Shopcart> sp) {
		
		
		//获取当前时间
		Calendar c = Calendar.getInstance();
		//System.out.println(c.getTime()); //Wed Mar 12 10:11:21 CST 2008    输出这种形式
		SimpleDateFormat simpleDateTimeFormat =   new SimpleDateFormat( " yyyy-MM-dd HH:mm:ss " );
		c = Calendar.getInstance(Locale.CHINESE);
		//System.out.println(simpleDateTimeFormat.format(c.getTime()));//输出这种形式 2008-03-12 10:11:21 
		Timestamp ts = Timestamp.valueOf(simpleDateTimeFormat.format(c.getTime()));
		
		i.setTime(ts);
		i.setInfo(DingdanStatus.stu);
		Indent indent = indentdao.addIndent(i);
	
		//保存订单详细
		for(Shopcart s : sp)
		{
			Indentproduct ip = new Indentproduct();
			ip.setProduct(s.getCartItem().getProduct());
			ip.setIndent(indent);
			ip.setPrice(s.getCartItem().getUniqueprice());
			ip.setNumber(s.getCartItem().getPcount());
			indentproductdao.addIndent(ip);
		}
		
		//清空购物车
		shoppingcartdao.deleteAll(sp);
		return indent;
		
		
	}

	@Override
	public void deleteIndent(int id) {
		
		indentdao.deleteIndent(id);

	}

	@Override
	public void updateIndent(Indent i) {
		
		indentdao.updateIndent(i);

	}
	
	/**
	 * 根据订单状态查询
	 * @param id 用户id
	 * @param Status 订单状态
	 * @return
	 */
	public List<Indent> findByStatus(int id, int Status) {
		
		return indentdao.findByStatus(id, Status);
	}
	/**
	 * 查询订单详细
	 * @param indent 订单
	 * @return
	 */
	public List<Indentproduct> findIndentproduct(Indent indent) {
	
		return indentproductdao.findByIndent(indent);
	}
	
	/**
	 * 根据订单id查询订单
	 */
	public Indent findIndent(int id) {
		
		return indentdao.findIndent(id);
	}
	
	/**
	 * 分页查询所有订单
	 */
	public Result findIndentByPage(Page page) {
		
		page = PageUtil.createPage(page, 
				indentdao.findAllCount());	//创建分页对象
		List<Indent> commodityes
				= indentdao.findAll(page);	//执行查询
		Result result = new Result();	//创建结果对象
		result.setPage(page);			//设置分页信息
		result.setList(commodityes);//设置商品种类列表
		return result;
		
	}
	@Override
	public List<Indent> findByStatus(int Status) {
		return indentdao.findByStatus(Status);
	}

}
