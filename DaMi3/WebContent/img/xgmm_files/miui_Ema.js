 function Emailtip(inp,mailbox,mailInn){
  var nowid;
  var totalid;
  var can1press = false;
  var emailafter;
  var emailbefor;
	inp.focus(function(){ //文本框获得焦点
      if($(this).val()=="Email/米聊号"){$(this).val("")};
	  $(this).css("color","#333333");
      mailbox.css({"left":$(this).position().left+"px","top":parseInt($(this).position().top+32)+"px"});	  
    }).keyup(function(e){ //文本框输入文字时，显示Email提示层和常用Email
		var press = inp.val();
		if (press!="" || press!=null){
		var emailtxt = "";			
		var emailvar = new Array("@qq.com","@163.com","@gmail.com","@126.com","@sina.com","@sohu.com","@hotmail.com","@yahoo.com");
		totalid = emailvar.length;
			var emailmy = "<dt>请选择或继续输入...</dt>";
			if(!(isEmail(press))){
			    mailInn.html("").parent().hide();
			} else {
			    emailbefor = press.split("@")[0];
			    emailafter = "@" + press.split("@")[1];
			    for(var i=0; i<emailvar.length; i++) {
			         var theemail = emailvar[i];
			         if(theemail.indexOf(emailafter) == 0)
			         {
				         emailtxt = emailtxt + "<dd class='newemail'>" + emailbefor + emailvar[i] + "</dd>"
				     }
			    }
				mailbox.show("fast");
				mailInn.html(emailmy+emailtxt).show();
			}
			if(mailInn.html()){
				 mailbox.show("fast");
				 can1press = true;
			} else {
				 mailbox.hide("fast");
				 can1press = false;
			}
		}
		if (press=="" || press==null){		
		     mailbox.hide();    
		}	
    }).blur(function(){//文本框失去焦点
    if($(this).val()==""){$(this).val("Email/米聊号").css({"color":"#999999"})}
    setTimeout(function(){
	 mailbox.hide("fast")
	},500)
   })
   $(".newemail").live("mouseover",function(){
	   $(".newemail").removeClass("current");
	   $(this).addClass("current");
	   nowid = $(this).index();
     }).live("click",function(){
      inp.val($(this).html())
      mailbox.hide("fast");
    });
	$(document).bind("keyup",function(e)  
	{     
			switch(e.which)     
			{            
				case 38:
				if (nowid > 0){		
					$(".newemail").removeClass("current");
					$(".newemail").eq(nowid).prev().addClass("current").focus();
					nowid = nowid-1;		
				}
				if(!nowid){
					nowid = 0;
					$(".newemail").removeClass("current");
					$(".newemail").eq(nowid).addClass("current").focus();				
				}
				break;       
				case 40:
				if (nowid < totalid){				
					$(".newemail").removeClass("current");
					$(".newemail").eq(nowid).next().addClass("current").focus();	
					nowid = nowid+1;			
				}
				if(!nowid){
					nowid = 0;
					$(".newemail").removeClass("current");
					$(".newemail").eq(nowid).addClass("current").focus();				
				}
				break;  
				case 13:
				var newhtml = $(".newemail").eq(nowid).html();
				if(newhtml){
				    newhtml = newhtml.replace(/<.*?>/g,"");
				    inp.val(newhtml); 
				    mailInn.hide();  
				}
				$("#userPW").focus();
				break;
			}   
	});
}