<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="css/examples-offline.css" rel="stylesheet">
<link href="css/kendo.dataviz.min.css" rel="stylesheet">

<script src="css/jquery.min.js"></script>
<script src="css/kendo.dataviz.min.js"></script>
</head>
<body>

	<div id="example" class="k-content">
		<div class="chart-wrapper">
			<div id="chart" style=" height: 10000px"></div>
		</div>
		<script>
			$(document).ready(function() {
				setTimeout(function() {
					createChart();

					$("#example").bind("kendo:skinChange", function(e) {
						createChart();
					});
				}, 400);
			});

			function createChart() {
				$("#chart")
						.kendoChart(
								{
									theme : $(document).data("kendoSkin")
											|| "default",
									dataSource : {
										transport : {
											read : {
												url : 'it_tongji',
												dataType : 'json',
												type : 'POST'
											}
										},
										schema : {
											parse : function(response) {
												// 查看下 response 的内容
												//console.log(JSON.stringify(response));
												var data = [];
												//alert(response[1].sort);
												for ( var i = 0, l = response.length; i < l; i++) {
													data.push({
																name : response[i].pname,
																value : response[i].ptotal-response[i].pstock,
															});
												}
												return data;
											}
										}
									},
									title : {
										text : "销售量统计"
									},
									legend : {
										position : "bottom"
									},
									seriesDefaults : {
										type : "bar",
										labels : {
											visible : true,
											format : "{0}件"
										}
									},
									series : [ {
										field : "value",
										name : "大米手机",
										colorField : "userColor"
									} ],
									valueAxis : {
										labels : {
											format : "{0}件"
										}
									},
									categoryAxis : {
										field : "name"
									}
								});
			}
		</script>
	</div>
</body>
</html>