package com.demo.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.demo.entity.Loginuser;
import com.demo.service.LoginUserServiceInf;
import com.demo.util.SecurityCode;
import com.demo.util.SecurityImage;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/**
 * 注册
 * @author Damon
 *
 */
@Controller("RegisterAction")
public class RegisterAction implements Action {

	@Resource(name="LoginUserServiceImpl")
	private LoginUserServiceInf login;
	//验证是否已经存在
	private String id;
	//注册新用户对象
	private Loginuser u ;
	//页面提交的验证码
	private String fromcode;
	//图片流
    private ByteArrayInputStream imageStream;
 
	public String execute() throws Exception {
		
		 //如果开启Hard模式，可以不区分大小写
//      String securityCode = SecurityCode.getSecurityCode(4,SecurityCodeLevel.Hard, false).toLowerCase();
      
      //获取默认难度和长度的验证码
      String securityCode = SecurityCode.getSecurityCode();
      imageStream = SecurityImage.getImageAsInputStream(securityCode);
      //放入session中
      ActionContext.getContext().getSession().put("securityCode" ,securityCode);
		return SUCCESS;
	}
	
	/**
	 * 用户注册
	 * @return
	 * @throws Exception
	 */
	public String register() throws Exception {
		
		//获取正确验证码
		String Code = (String)ActionContext.getContext().getSession().get("securityCode");
		
		
		//比对验证码
		if(!fromcode.equals(Code)){
			return "fromerror";
		}
		
		//设置用户的本次登录ip
		u.setIp(ServletActionContext.getRequest().getRemoteAddr());
		
		login.insert(u);
		
		ActionContext.getContext().getSession().put("mail" ,u);
			
		return SUCCESS;
	
	}
	
	/**
	 * 验证邮箱是否已经存在
	 * @throws Exception
	 */
	public void checking() throws Exception {

		int i =1 ;
		
		if(!login.findByName(id)){
			i=0;
		}
		
		try {
			PrintWriter out= ServletActionContext.getResponse().getWriter();
			
			out.print(i);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	   public ByteArrayInputStream getImageStream() {
	        return imageStream;
	    }
	   
	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}
	public Loginuser getU() {
		return u;
	}
	public void setU(Loginuser u) {
		this.u = u;
	}
	public String getFromcode() {
		return fromcode;
	}
	public void setFromcode(String fromcode) {
		this.fromcode = fromcode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public LoginUserServiceInf getLogin() {
		return login;
	}
	public void setLogin(LoginUserServiceInf login) {
		this.login = login;
	}

	  
}
