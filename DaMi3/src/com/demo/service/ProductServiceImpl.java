package com.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.ProductDaoInf;
import com.demo.dao.PsortDaoInf;
import com.demo.entity.Phone;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.util.Page;
import com.demo.util.PageUtil;
import com.demo.util.ProductStatus;
import com.demo.util.Result;

/**
 * 商品业务实现类
 * @author Damon
 */
@Service("ProductServiceImpl")
public class ProductServiceImpl implements ProductServiceInf {

	@Resource(name="ProductDaoImpl")
	public ProductDaoInf productdao ;
	
	@Resource(name="PsortDaoImpl")
	public PsortDaoInf psortdao;
	
	public ProductDaoInf getProductdao() {
		return productdao;
	}
	public void setProductdao(ProductDaoInf productdao) {
		this.productdao = productdao;
	}
	public PsortDaoInf getPsortdao() {
		return psortdao;
	}
	public void setPsortdao(PsortDaoInf psortdao) {
		this.psortdao = psortdao;
	}
	
	/**
	 * 根据主键删除记录
	 * @param 要删除的商品的主键值
	 */
	public void delete(Integer number) {
		
		productdao.delete(number);

	}

	/**
	 * 查询所有记录
	 * @return 返回所有商品的list集合
	 */
	public List<Product> findAll() {
		
		return productdao.findAll();
	}

	/**
	 * 根据分类查询记录
	 * @param 分类名称
	 * @return 返回所查询的分类的商品List集合
	 */
	public Result find(Psort sortid ,  Page page) {
		page = PageUtil.createPage(page, 
				productdao.findAllPsortCount(sortid));	//创建分页对象
			List<Product> commodityes
				= productdao.findByClass(sortid , page);	//执行查询
		Result result = new Result();	//创建结果对象
		result.setPage(page);			//设置分页信息
		result.setList(commodityes);//设置商品种类列表
		return result;
	}

	/**
	 * 根据主键编号查询记录
	 * @param 要查询商品的主键号
	 * @return 返回查询到的商品对象
	 */
	public Product findById(Integer number) {
		
		return productdao.findById(number);
	}

	/**
	 * 插入新商品信息
	 * @param 新商品对象
	 */
	public void insert(Product p) {
		
		Phone phone = new Phone();
		phone.setId(2);
		phone.setSort(1);
		p.setPhone(phone);
		p.setPsort(psortdao.findByID(p.getPsort().getId()));
		p.setPstatus(ProductStatus.ON+""); //设置商品状态
		p.setPstock(999);
		p.setPtotal(999);
		
        System.out.println("1"+p.getPimg());
        System.out.println("2"+p.getPimgbig());
        System.out.println("3"+p.getPimgmiddle());
        System.out.println("4"+p.getPimgsmall());
        System.out.println("5"+p.getPinfo());
        System.out.println("6"+p.getPmessage());
        System.out.println("7"+p.getPmoblie());
        System.out.println("8"+p.getPname());
        System.out.println("9"+p.getPnameid());
        System.out.println("10"+p.getPnorms());
        System.out.println("11"+p.getPrice());
        System.out.println("12"+p.getPselect());
        System.out.println("13"+p.getPstatus());
        System.out.println("14"+p.getPxx());
        System.out.println("15"+p.getPsid());
        System.out.println("16"+p.getPstock());
        System.out.println("stre"+p.getPtotal());
        System.out.println("17"+p.getPhone().getId());
        System.out.println("18"+p.getPhone().getSort());
        System.out.println("19"+p.getPsort().getSort());
		
		productdao.insert(p);

	}

	/**
	 * 更新用户信息
	 * @param 要更新商品对象
	 */
	public void update(Product p) {
	
		productdao.update(p);
		
	}
	
	public Result findAllCommodity(Page page) {
		
		page = PageUtil.createPage(page, 
				productdao.findAllCount());	//创建分页对象
		List<Product> commodityes
				= productdao.findAll(page);	//执行查询
		Result result = new Result();	//创建结果对象
		result.setPage(page);			//设置分页信息
		result.setList(commodityes);//设置商品种类列表
		return result;
		
	}
	
	/**
	 * 根据商品名称模糊分页查询商品
	 * @param productame 查询字符
	 * @param page 分页
	 * @return 查询商品结果List集合
	 */
	public Result findByName(String productame, Page page) {
		page = PageUtil.createPage(page, 
				productdao.findByNameCount(productame));	//创建分页对象
		List<Product> commodityes
				= productdao.findByName(productame , page);	//执行查询
		Result result = new Result();	//创建结果对象
		result.setPage(page);			//设置分页信息
		result.setList(commodityes);//设置商品种类列表
		return result;
	}
	
	
	/**
	 * 查询出所有的商品分类
	 * @return 商品分类集合
	 */
	public List<Psort> findAllPsort() {

		return psortdao.findAll();
	}
	
	/**
	 * 根据分类id获取分类对象
	 * @param pid 分类id
	 * @return 分类对象
	 */
	public Psort findPsort(int pid) {

		Psort psort = psortdao. findByID(pid);
		
		//获取一下psort属性值，这样做可以避免延迟加载所带来的错误
		//错误：could not initialize proxy - no Session
		psort.getSort();
		
		return psort;
	}
	public Product selectproductid(int pd) {
		return productdao.selectproductid(pd);
	}

	
	



}
