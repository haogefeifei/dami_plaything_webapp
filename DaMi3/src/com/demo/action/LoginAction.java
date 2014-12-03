package com.demo.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import com.demo.entity.Loginuser;
import com.demo.entity.Shopcart;
import com.demo.service.LoginUserServiceInf;
import com.demo.service.ShopCartServiceInf;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/**
 * 登录验证
 * @author Damon
 *
 */
@Controller("LoginAction")
public class LoginAction implements Action {

	@Resource(name="LoginUserServiceImpl")
	private LoginUserServiceInf login;
	
	@Resource(name="ShopCartServiceImpl")
	private ShopCartServiceInf shopcartservice ;
	private Loginuser user;
	private Loginuser userinfo;
	private String password;//用户密码
	/**
	 * 验证用户密码是否正确
	 * @return 正确
	 */
	public String execute() throws Exception {

		 Loginuser u = login.findByNamePwd(user);
		
		if(u == null){
			
			return ERROR;
		}
		
		//如果用户账号没激活
		else if(u.getUsercode() != 1){
			
			return NONE;
		}
		
		//如果用户资料资料位完善 
		else if(u.getUsernickname()==null){
			ActionContext.getContext().getSession().put("user" , u);
			return "info";
			
		}
		
		//记录用户上次登录的ip地址
		u.setLoginip(u.getIp());
		//记录用户本次登录的ip地址
		u.setIp(ServletActionContext.getRequest().getRemoteAddr());
		login.update(u);
		ActionContext.getContext().getSession().put("u" , u);
		
		//如果用户已经登录，从数据库取出购物车
		List<Shopcart> shoppingcarts= shopcartservice.getallCartsByuserid(u.getUserid());
				
			
		ActionContext.getContext().getSession().put("cart" , shoppingcarts);
		
		return SUCCESS;
	}
	
	/**
	 * 更新用户资料
	 * @return 更新成功
	 * @throws Exception
	 */
	public String info() throws Exception {
		
		Loginuser user = (Loginuser)ActionContext.getContext().getSession().get("user");
		user.setUsernickname(userinfo.getUsernickname());
		user.setSex(userinfo.getSex());
		
		//记录用户上次登录的ip地址
		user.setLoginip(user.getIp());
		//记录用户本次登录的ip地址
		user.setIp(ServletActionContext.getRequest().getRemoteAddr());
		login.update(user);
		ActionContext.getContext().getSession().put("u" , user);
		
		return SUCCESS;
		
	}
	
	/**
	 * 清空session，退出登录
	 * @return 
	 * @throws Exception
	 */
	public String exit() throws Exception {
	
		ActionContext.getContext().getSession().put("u" , null);
		
		return SUCCESS;
	}
	
	/**
	 * 
	 * @return
	 */
	public String alterUser() throws Exception {
		
		Loginuser user = (Loginuser) ActionContext.getContext().getSession().get("u");
		//System.out.println(user.getUsernickname());
		
		//如果用户没有登录
		if(user == null){
			return "nologin";
		}
		
		user.setUserpsw(password);
		login.update(user);
		
		return SUCCESS;
	}

	public LoginUserServiceInf getLogin() {
		return login;
	}
	public void setLogin(LoginUserServiceInf login) {
		this.login = login;
	}
	public Loginuser getUser() {
		return user;
	}
	public void setUser(Loginuser user) {
		this.user = user;
	}
	public Loginuser getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Loginuser userinfo) {
		this.userinfo = userinfo;
	}

	public ShopCartServiceInf getShopcartservice() {
		return shopcartservice;
	}

	public void setShopcartservice(ShopCartServiceInf shopcartservice) {
		this.shopcartservice = shopcartservice;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
