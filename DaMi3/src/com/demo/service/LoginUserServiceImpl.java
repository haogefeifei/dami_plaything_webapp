package com.demo.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.demo.dao.LoginUserDaoInf;
import com.demo.entity.Loginuser;

@Service("LoginUserServiceImpl")
public class LoginUserServiceImpl implements LoginUserServiceInf {

	@Resource(name="LoginUserDaoImpl")
	private LoginUserDaoInf userdao;
	public LoginUserDaoInf getUserdao() {
		return userdao;
	}

	public void setUserdao(LoginUserDaoInf userdao) {
		this.userdao = userdao;
	}
	
	/**
	 * 删除用户
	 * @param 用户ID
	 */
	public void delete(Integer number) {
		
		userdao.delete(number);

	}

	/**
	 * 查询出所有用户
	 * @return 返回的是用户集
	 */
	public List<Loginuser> findAll() {
		return userdao.findAll();
		
	}

	/**
	 * 根据id查询用户
	 * @param 用户id
	 * @return 用户是否存在
	 */
	public Loginuser findById(Integer number) {

		return userdao.findById(number);
	}

	/**
	 * 添加新用户
	 *  @param 要添加的用户对象
	 */
	public void insert(Loginuser u) {

		//获取当前时间
		Calendar c = Calendar.getInstance();
		//System.out.println(c.getTime()); //Wed Mar 12 10:11:21 CST 2008    输出这种形式
		SimpleDateFormat simpleDateTimeFormat =   new SimpleDateFormat( " yyyy-MM-dd HH:mm:ss " );
		c = Calendar.getInstance(Locale.CHINESE);
		//System.out.println(simpleDateTimeFormat.format(c.getTime()));//输出这种形式 2008-03-12 10:11:21 
		Timestamp ts = Timestamp.valueOf(simpleDateTimeFormat.format(c.getTime()));
		
		u.setUsercode(0);
		u.setUsertime(ts);
		u.setUsermail(u.getUsername());
		
		userdao.insert(u);

	}

	/**
	 * 更新用户信息
	 *  @param 要更新的用户对象
	 */
	public void update(Loginuser u) {

		userdao.update(u);

	}

	/**
	 * 验证用户名密码是否正确
	 * @param 要验证的用户对象
	 * @return 存在就返回对象，否则为空
	 */
	public Loginuser findByNamePwd(Loginuser u) {
		
		return userdao.findByNamePwd(u);
	}

	/**
	 * 检查用户名是否被占用
	 * @param 要检查的用户名
	 * @return 是否被占用
	 */
	public boolean findByName(String name) {
		
		return userdao.findByName(name);
	}	

}
