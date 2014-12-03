package com.demo.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.demo.entity.Indent;
import com.demo.entity.Page;
import com.demo.service.SelectindentServiceInf;
import com.opensymphony.xwork2.ActionSupport;

@Controller("SelectindentAction")
public class SelectindentAction extends ActionSupport {

	@Resource(name="SelectindentServiceImpl")
	private SelectindentServiceInf service;

	public SelectindentServiceInf getService() {
		return service;
	}

	public void setService(SelectindentServiceInf service) {
		this.service = service;
	}
	
	private List<Indent> list;
	
	public List<Indent> getList() {
		return list;
	}

	public void setList(List<Indent> list) {
		this.list = list;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	private Page page;
	
	private Indent indent;
	
	public Indent getIndent() {
		return indent;
	}

	public void setIndent(Indent indent) {
		this.indent = indent;
	}

	public String find(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.count(indent));
	       list=service.find(p,indent);
		   return "success";
	}
	public String showPage(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.count(indent));
	       list=service.find(p,indent);
	       page=p; 
		   return "page";
	}
	
	public String finds(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.counts(indent,indent.getInfo()));
	       list=service.finds(p,indent,indent.getInfo());
		   return "success";
	}
	public String showPages(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.counts(indent,indent.getInfo()));
	       list=service.finds(p,indent,indent.getInfo());
	       page=p; 
		   return "page";
	}
	
	public String findss(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.countss(indent,indent.getInfo(),indent.getTotalprices()));
	       list=service.findss(p,indent,indent.getInfo(),indent.getTotalprices());
	       
		   return "success";
	}
	public String showPagess(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.countss(indent,indent.getInfo(),indent.getTotalprices()));
	       list=service.findss(p,indent,indent.getInfo(),indent.getTotalprices());
	       page=p; 
		   return "page";
	}
	
	public String findall(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.countall(indent,indent.getTotalprices()));
	       list=service.findall(p,indent,indent.getTotalprices());
	       
		   return "success";
	}
	public String showPageall(){
		Page p= new Page();
		   p.setPagenow(page.getPagenow());
		   p.setRowsize((int)service.countall(indent,indent.getTotalprices()));
	       list=service.findall(p,indent,indent.getTotalprices());
	       page=p; 
		   return "page";
	}
}
