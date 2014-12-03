package com.demo.util;

import java.util.Date;

public class timeutil {

	
	public static String getnowdate(){
		
		return new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
		
	}
	
	
}
