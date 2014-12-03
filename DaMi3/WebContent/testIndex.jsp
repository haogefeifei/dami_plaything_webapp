<%@ page language="java"  pageEncoding="utf-8"%>  
 <%@ taglib prefix="s" uri="/struts-tags" %>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
 <html>  
   <head>  
    
       
     <title>My JSP 'index.jsp' starting page</title>  
     <meta http-equiv="pragma" content="no-cache">  
     <meta http-equiv="cache-control" content="no-cache">  
     <meta http-equiv="expires" content="0">      
     <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
     <meta http-equiv="description" content="This is my page">  
     <!--  
     <link rel="stylesheet" type="text/css" href="styles.css">  
     -->  
     <link href="img/login/logo.ico" rel="shortcut icon" />
   </head>
   <img src="http://127.0.0.1:8080/DaMi3/image_small/121224092453562.jpg"/>  
   <s:form method="post" action="imager/upload" enctype="multipart/form-data">  
   <s:textfield name="title" label="title"></s:textfield>  
   <s:file name="upload" label="file"></s:file>  
   <s:submit></s:submit>  
   </s:form>  
   <body>  
   
   </body>  
 </html>