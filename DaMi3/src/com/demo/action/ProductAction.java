package com.demo.action;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;

import com.demo.entity.ImgsList;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.service.ProductServiceInf;
import com.demo.util.Page;
import com.demo.util.Result;
import com.opensymphony.xwork2.Action;

/**
 * 商品操作
 * @author Damon
 *
 */
@Controller("ProductAction")
public class ProductAction implements Action {

	@Resource(name="ProductServiceImpl")
	private ProductServiceInf productservice;
	public ProductServiceInf getProductservice() {
		return productservice;
	}
	public void setProductservice(ProductServiceInf productservice) {
		this.productservice = productservice;
	}
	private int currentPage;			//当前页
	private Page page;
	private List<Product> ps; //商品集合
	private String pname;
	private Product product; //一个商品对象
	private List<String> pimg = new ArrayList<String>(); //一个商品对象大图集合
	private List<ImgsList> imgs= new ArrayList<ImgsList>(); 
	private List<Product> rimg= new ArrayList<Product>(); 
	private Integer productid; //一个商品id
	private List<Psort> psort ; //商品分类集合
	private int pid ;
	private static final int MaxCurrent = 20 ;
	
	
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List<Product> getPs() {
		return ps;
	}
	public void setPs(List<Product> ps) {
		this.ps = ps;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public List<Psort> getPsort() {
		return psort;
	}
	public void setPsort(List<Psort> psort) {
		this.psort = psort;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

	/**
	 * 显示所有商品
	 * @return 向页面返回商品集合
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		
		pid = 0 ; //清空分类查询结果
		pname = null; //清空搜索结果
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(1);	//设置当前页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result = productservice.findAllCommodity(newPage);//获取查询结果
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		psort = productservice.findAllPsort(); //获取所有商品分类
		
		return SUCCESS;
	}

	/**
	 * 分页显示商品
	 * @return 向页面返回商品集合
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String showProduct() throws Exception {
		
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(currentPage);	//设置当前页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result;
		
		//如果有进行分类也没有进行搜索查询
		if(pid != 0 && pname==null){
			Psort pt = productservice.findPsort(pid);
			result = productservice.find(pt , newPage);//获取查询结果
		}
		//如果没有进行搜索查询
		else if(pname==null){
			result = productservice.findAllCommodity(newPage);//获取查询结果
			
		}
		//进行搜索查询
		else{
			result = productservice.findByName(pname,newPage);//获取查询结果
		}
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		
		return SUCCESS;
		
		
	}
	
	/**
	 * 模糊查询商品
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String findByName() throws Exception {
		
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(1);	//设置当前页为第一页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result = productservice.findByName(pname,newPage);//获取查询结果
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		psort = productservice.findAllPsort(); //获取所有商品分类
		
		return SUCCESS;
		
		
	}
	
	/**
	 * 显示一个商品的详细信息
	 * @return 跳转到详细页面
	 * @throws Exception
	 */
	public String showProductInfo() throws Exception{
		
		product = productservice.findById(productid);
		
		//System.out.println("商品大图："+product.getPimgbig());
		
		String[] str1 =  product.getPimgbig().split("#");
			
		pimg = new ArrayList<String>();
		//把地址放进集合
		for(int i = 1; i<str1.length; i++){						
			pimg.add(i-1, str1[i]);
		}
		rimg = new ArrayList<Product>(); 
		
		if(product.getPxx() != "/"){
			String[] str2= product.getPxx().split("#");
			for(int r = 1; r<str2.length; r++){
				/*System.out.println(productservice.findById(Integer.parseInt(str2[r])).getPname());*/
				rimg.add(productservice.findById(Integer.parseInt(str2[r])));						
			}
		}

		return SUCCESS;
	}
	
	/**
	 * 进入图集
	 * @return
	 * @throws Exception
	 */
	public String productGetImg() throws Exception{
		
		product = productservice.findById(productid);
				
		String[] str1 =  product.getPimgbig().split("#");
		String[] str2 =  product.getPimgsmall().split("#");
			
		imgs = new ArrayList<ImgsList>();
		//把地址放进集合
		for(int i = 1; i<str1.length; i++){						
			ImgsList is = new ImgsList();
			is.setBigimg(str1[i]);
			is.setSamllimg(str2[i]);
			imgs.add(is);
			
		}

		return SUCCESS;
		
	}
	
	/**
	 * 返回商品分类到配件首页
	 * @return 跳转到详细页面
	 * @throws Exception
	 */
	public String showPeijianInfo() throws Exception{
		
		psort = productservice.findAllPsort(); //获取所有商品分类
		return SUCCESS;
	}
	
	/**
	 * 根据分类查询商品
	 * @return	成功跳转页面
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String findPsortProduct() throws Exception{
		pname = null; //清空搜索结果
		Psort pt = productservice.findPsort(pid);//获取分类对象
		
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(1);	//设置当前页为第一页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result = productservice.find(pt , newPage);//获取查询结果
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		
		return SUCCESS;
	}
	public List<String> getPimg() {
		return pimg;
	}
	public void setPimg(List<String> pimg) {
		this.pimg = pimg;
	}
	public List<ImgsList> getImgs() {
		return imgs;
	}
	public void setImgs(List<ImgsList> imgs) {
		this.imgs = imgs;
	}
}
