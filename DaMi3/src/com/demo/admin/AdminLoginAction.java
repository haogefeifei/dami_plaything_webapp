package com.demo.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.demo.entity.Master;
import com.demo.service.AdminServiceInf;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/**
 * 管理员登录
 * @author FeiFei
 *
 */
@Controller("AdminLoginAction")
public class AdminLoginAction implements Action {

	@Resource(name="AdminServiceImpl")
	private AdminServiceInf adminservice;
	private Master admin ; //管理员对象
	private Integer masterid;
	private String fromcode;//页面提交的验证码
	private String quanxian;
	private String quanxian1;
	private String quanxian2;
	private String quanxian3;
	private String quanxian4;
	private String quanxian5;
	private String quanxian6;
	
	public Integer getMasterid() {
		return masterid;
	}
	public void setMasterid(Integer masterid) {
		this.masterid = masterid;
	}
	public String getQuanxian() {
		return quanxian;
	}
	public void setQuanxian(String quanxian) {
		this.quanxian = quanxian;
	}
	public String getQuanxian1() {
		return quanxian1;
	}
	public void setQuanxian1(String quanxian1) {
		this.quanxian1 = quanxian1;
	}
	public String getQuanxian2() {
		return quanxian2;
	}
	public void setQuanxian2(String quanxian2) {
		this.quanxian2 = quanxian2;
	}
	public String getQuanxian3() {
		return quanxian3;
	}
	public void setQuanxian3(String quanxian3) {
		this.quanxian3 = quanxian3;
	}
	public String getQuanxian4() {
		return quanxian4;
	}
	public void setQuanxian4(String quanxian4) {
		this.quanxian4 = quanxian4;
	}
	public String getQuanxian5() {
		return quanxian5;
	}
	public void setQuanxian5(String quanxian5) {
		this.quanxian5 = quanxian5;
	}
	public String getQuanxian6() {
		return quanxian6;
	}
	public void setQuanxian6(String quanxian6) {
		this.quanxian6 = quanxian6;
	}
	public AdminServiceInf getAdminservice() {
		return adminservice;
	}
	public void setAdminservice(AdminServiceInf adminservice) {
		this.adminservice = adminservice;
	}
	public Master getAdmin() {
		return admin;
	}
	public void setAdmin(Master admin) {
		this.admin = admin;
	}
	public String getFromcode() {
		return fromcode;
	}
	public void setFromcode(String fromcode) {
		this.fromcode = fromcode;
	}


	/**
	 * 管理员登录
	 */
	public String execute() throws Exception {
		//System.out.println("管理员登录了~！");
		
		//获取正确验证码
		String Code = (String)ActionContext.getContext().getSession().get("securityCode");		
		//比对验证码
		if(!fromcode.equals(Code)){
			return "fromerror";
		}
		
		Master m = adminservice.findByNamePwd(admin);
		if(m == null){
			
			return ERROR;
		}
		
		ActionContext.getContext().getSession().put("admin" , m);
		return SUCCESS;
	}
	
	/**
	 * 管理员退出
	 * @return
	 * @throws Exception
	 */
	public String exit() throws Exception {
		
		ActionContext.getContext().getSession().put("admin" , null);
		
		return SUCCESS;
	}

	public void select(){
		ActionContext.getContext().getSession().put("adminselect", adminservice.select());
	}
	public String update(){
		Master ms = adminservice.findById(admin.getMasterid());
		ms.setAdminkey(Integer.parseInt(quanxian));
		adminservice.update(ms);
		return selectid();
	}
	
	public String selectid(){
		select();
		ActionContext.getContext().getSession().put("adminids", adminservice.findById(masterid));
		return "selectid";
	}
}
