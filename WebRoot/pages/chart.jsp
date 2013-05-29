<%@ page language="java" contentType="text/html;utf-8"
    pageEncoding="utf-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	   	<title>chart</title>
	   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	   	<!-- Bootstrap -->
	   	<link href="${ctxPath }/basic/bootstrap.css" rel="stylesheet" media="screen">
	   	<link href="${ctxPath }/basic/bootstrap-responsive.css" rel="stylesheet" media="screen">
		<link href="${ctxPath }/nav/nav.css" rel="stylesheet" media="screen">
		<script type="text/javascript" src="${ctxPath }/basic/Chart.min.js"></script>
		<!--[if lt IE 9]>
			<script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
  	</head>
  	<body>
  	
  	<nav class="nav">
		<ul>
			<li ><a href="${ctxPath }/main/topic/list/1">列表</a></li>
			<li ><a href="${ctxPath }/pages/add.jsp">新增</a></li>
			<li class="current" ><a href="#">统计</a></li>
		</ul>
	</nav>
	
	
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<h2>
					统计
				</h2>
				<p>
					回复前5 如果回复数一样则按发布时间排序
				</p>
				
			</div>
			<div class="span6">
				<table class="table">
					<thead>
						<tr>
							<th>
								排行
							</th>
							<th>
								标题
							</th>
							<th>
								创建时间
							</th>
							<th>
								回复
							</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty topics}">
						<c:forEach items="${topics}" var="topic" varStatus="i">
							<tr class="info">
								<td>
									${i.index+1}
								</td>
								<td>
									${topic.title}
								</td>
								<td>
									${topic.createDate}
								</td>
								<td>
									${topic.commentCount}
								</td>
							</tr>
						</c:forEach>
						</c:if>
						
					</tbody>
				</table>
			</div>
			<div class="span4">
			<canvas id="canvas" class="span4"></canvas>
			</div>
			
			<script>
				<c:if test="${not empty topics}">
				var labels = new Array();
				var datas = new Array();
				<c:forEach items="${topics}" var="top" varStatus="i">
					labels[${i.index}]='${top.title}';
					datas[${i.index}]=${top.commentCount};
				</c:forEach>
				var barChartData = {
					labels : labels,
					datasets : [
						{
							fillColor : "rgba(151,187,205,0.5)",
							strokeColor : "rgba(151,187,205,1)",
							data : datas
						}
					]
					
				}
		
				var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
				
			</script>
			</c:if>
		</div>
	</div>
	
	
    <script src="${ctxPath }/basic/jquery-1.9.1.min.js"></script>
    <script src="${ctxPath }/basic/bootstrap.min.js"></script>
  	</body>
</html>