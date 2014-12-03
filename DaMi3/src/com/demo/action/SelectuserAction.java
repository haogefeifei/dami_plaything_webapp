package com.demo.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.demo.entity.Loginuser;
import com.demo.entity.Page;
import com.demo.service.SelectuserServiceInf;
import com.opensymphony.xwork2.ActionSupport;


@Controller("SelectuserAction")
public class SelectuserAction extends ActionSupport {
	
	@Resource(name="SelectuserServiceImpl")
	private SelectuserServiceInf service;

	public SelectuserServiceInf getService() {
		return service;
	}

	public void setService(SelectuserServiceInf service) {
		this.service = service;
	}
	
	private List<Loginuser> list;
	
	public List<Loginuser> getList() {
		return list;
	}

	public void setList(List<Loginuser> list) {
		this.list = list;
	}

	
	
	private Loginuser loginuser;
	
	public Loginuser getLoginuser() {
		return loginuser;
	}

	public void setLoginuser(Loginuser loginuser) {
		this.loginuser = loginuser;
	}

	public String select(){
		service.selectuser(loginuser.getUsername());
		return "select";
	}
	
	private Page page;
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String find(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.count(loginuser));
	       list=service.find(p,loginuser);
		   return "success";
	}
	public String showPage(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.count(loginuser));
	       list=service.find(p,loginuser);
	       page=p; 
		   return "page";
	}
}
