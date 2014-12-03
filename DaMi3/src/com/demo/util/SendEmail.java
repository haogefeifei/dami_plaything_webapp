package com.demo.util;

import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServlet;


public class SendEmail {
	
	public void send(String to){
	
		
		
		
		String subject="大米手机网上商城邮箱验证提醒";
		String content="感谢您于"+timeutil.getnowdate()+"在大米手机商城注册，复制以下链接，即可完成安全验证："
		+"http://127.0.0.1/DaMi3/registbyEmail.action?checkemail="+to	
		
		+"为保障您的帐号安全，请在24小时内点击该链接，您也可以将链接复制到浏览器地址栏访问。"+
"若您没有申请过验证邮箱 ，请您忽略此邮件，由此给您带来的不便请谅解。";
		
		
		  String host = "smtp.163.com";      //发件人使用发邮件的电子信箱服务器 
	      
		  String from = "zx540744679@163.com";     //发邮件的出发地（发件人的信箱） 
	      
		  Properties props = System.getProperties(); 
	      // 设置邮件服务器 
	      props.put("mail.smtp.host", host); 
	      // 取得session 
	      props.put("mail.smtp.auth", "true"); //这样才能通过验证 
	      MyAuthenticator myauth = new MyAuthenticator("zx540744679@163.com", "cwz123456789"); 
	      Session session = Session.getDefaultInstance(props, myauth); 
	      //session.setDebug(true); 
	      // 定义message 
	      MimeMessage message = new MimeMessage(session); 
	      try{
	      
	      // 设定发送邮件的地址 
	      message.setFrom(new InternetAddress(from)); 
	      // 设定接受邮件的地址 
	      message.addRecipient(Message.RecipientType.TO, 
	        new InternetAddress(to)); 
	      // 设定邮件主题
	      message.setSubject(subject); 
	      // 设定邮件内容
	      BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
	      mdp.setContent(content,"text/html;charset=gbk");//给BodyPart对象设置内容和格式/编码方式
	      Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对
	     //象(事实上可以存放多个)
	     mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)
	     message.setContent(mm);//把mm作为消息对象的内容
	     //   message.setText(content); 
	      message.saveChanges(); 
	      Transport.send(message);  
	      }catch(Exception e){
	    	  
	    	  e.printStackTrace();
	      }
	      
	   }

	
}

class MyAuthenticator  extends javax.mail.Authenticator {
			private String strUser;
			private String strPwd;
			public MyAuthenticator(String user, String password) {
				this.strUser = user;
				this.strPwd = password;
			}

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(strUser, strPwd);
			}
}


