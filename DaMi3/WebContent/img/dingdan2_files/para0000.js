/** 说明重要

在订单成功页面：的源代码
加上这行代码：

<input type="hidden" id="orderid99" value="订单号" />
<input type="hidden" id="price99" value="金额" />

以下是获取订单明细的javascript代码

**/




var orderid99 = document.getElementById("orderid99").value;
var price99 = document.getElementById("price99").value;

 _ozprm = getlist();

function getlist(){
	var eleValue="";
	eleValue="orderid99="+orderid99 +"&price99="+price99;
return eleValue;
}



