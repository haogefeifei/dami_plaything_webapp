package com.demo.action;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.demo.entity.CartItem;
import com.demo.entity.Loginuser;
import com.demo.entity.Product;
import com.demo.entity.Shopcart;
import com.demo.service.CartItemServiceInf;
import com.demo.service.ProductServiceInf;
import com.demo.service.ShopCartServiceInf;
import com.demo.util.ShoppingCartStatus;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/**
 * 购物车操作
 * @author Damon
 */
@Controller("ShopCartAction")
public class ShopCartAction implements Action {
	
	
	@Resource(name="ProductServiceImpl")
	private ProductServiceInf productservice;
	@Resource(name="ShopCartServiceImpl")
	private ShopCartServiceInf shopcartservice ;
	@Resource(name="CartItemServiceImpl")
	private CartItemServiceInf cartitemservice;
	
	private int pid; //商品id
	private String pcount;//商品数量
	private int cartid;
	private Product product;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public ProductServiceInf getProductservice() {
		return productservice;
	}
	public void setProductservice(ProductServiceInf productservice) {
		this.productservice = productservice;
	}
	public ShopCartServiceInf getShopcartservice() {
		return shopcartservice;
	}
	public void setShopcartservice(ShopCartServiceInf shopcartservice) {
		this.shopcartservice = shopcartservice;
	}
	public CartItemServiceInf getCartitemservice() {
		return cartitemservice;
	}
	public void setCartitemservice(CartItemServiceInf cartitemservice) {
		this.cartitemservice = cartitemservice;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPcount() {
		return pcount;
	}
	public void setPcount(String pcount) {
		this.pcount = pcount;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	
	/**
	 * 计算购物车总价
	 */
	public String totalPrices() throws Exception {

		Loginuser user = (Loginuser) ActionContext.getContext().getSession().get("u");
		//System.out.println(user.getUsernickname());
		
		//如果用户没有登录
		if(user == null){
			return "nologin";
		}
		
			//如果用户已经登录，从数据库取出购物车
			List<Shopcart> shoppingcarts= shopcartservice.getallCartsByuserid(user.getUserid());
			
			//算出总价格
			int total=0;
			Iterator<Shopcart> cartite=shoppingcarts.iterator();
			
			while(cartite.hasNext()){
				
				Shopcart sp=cartite.next();
				int pcount=Integer.parseInt(sp.getCartItem().getPcount());
				int price=Integer.parseInt(sp.getCartItem().getProduct().getPrice());
				total=pcount*price+total;
			}
			ActionContext.getContext().getSession().put("mycarts" , shoppingcarts);
			ActionContext.getContext().getSession().put("total" , total);
			
			
			
			return SUCCESS;
		
	}
		
	/**
	 * 获取购物车
	 */
	public String execute() throws Exception {

		Loginuser user = (Loginuser) ActionContext.getContext().getSession().get("u");
		
		//如果用户没有登录
		if(user == null){
			return "nologin";
		}
		
		
		//如果用户已经登录，从数据库取出购物车
		List<Shopcart> shoppingcarts= shopcartservice.getallCartsByuserid(user.getUserid());
		
		//如果购物车为空
		if(shoppingcarts.size() == 0)
		{
			ActionContext.getContext().getSession().put("cart" , shoppingcarts);
			return "noshopcart";
		}
		else{
			ActionContext.getContext().getSession().put("cart" , shoppingcarts);
		
			return SUCCESS;
		}
	}

	/**
	 * 添加商品到购物车
	 * @return
	 * @throws Exception
	 */
	public String addToCart() throws Exception{
	
		Loginuser user = (Loginuser) ActionContext.getContext().getSession().get("u");
		
		//如果用户没有登录
		if(user == null){
			return "nologin";
		}
				
		//查询到商品对象
		Product product= productservice.findById(pid);
		
		Shopcart shopcart = shopcartservice.findCartProduct(user , product);
		
		if(shopcart != null)
		{
			//System.out.println("商品名称 :" +shopcart.getCartItem().getProduct().getPname());
			shopcartservice.setNum(shopcart, Integer.parseInt(pcount));
			
		}
		else{
			//添加购物车详细
			CartItem cartitem=new CartItem();
			cartitem.setProduct(product);
			cartitem.setUniqueprice(product.getPrice());
			cartitem.setPcount(pcount);
			cartitemservice.addcartitem(cartitem);
			
			//添加到购物车
			Shopcart shoppingcart=new Shopcart();
			shoppingcart.setCartItem(cartitem);
			shoppingcart.setLoginuser(user);
			//购物车还没提交
			shoppingcart.setShoppingcartStatus(ShoppingCartStatus.Pre);
			shopcartservice.addShoppingCart(shoppingcart);
		}
		
		
		
		return SUCCESS;
	}

	/**
	 * 删除购物车
	 * @return
	 * @throws Exception
	 */
	public String delectCart() throws Exception{
		Shopcart sc = (Shopcart)shopcartservice.getuniqueSpByid(cartid);
		Product pdt = productservice.selectproductid(sc.getCartItem().getProduct().getPsid());
		pdt.setPstock(pdt.getPstock()+Integer.parseInt(sc.getCartItem().getPcount()));
		productservice.update(pdt);
		shopcartservice.deleteShoppingcart(cartid);
		
		return SUCCESS;
	}
	
	public String updateproduct(){
		Product pdt = productservice.selectproductid(pid);
		int pcounts = Integer.parseInt(pcount);
		pdt.setPstock(pdt.getPstock()-pcounts);
		productservice.update(pdt);
		return "updateproduct";
	}
	
}
