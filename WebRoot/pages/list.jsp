<%@ page language="java" contentType="text/html;utf-8" pageEncoding="utf-8" %>
<%@ include file="common.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	   	<title>content</title>
	   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	   	<!-- Bootstrap -->
	   	<link href="${ctxPath }/basic/bootstrap.css" rel="stylesheet" media="screen">
	   	<link href="${ctxPath }/basic/bootstrap-responsive.css" rel="stylesheet" media="screen">
		<link href="${ctxPath }/nav/nav.css" rel="stylesheet" media="screen">
		<!--[if lt IE 9]>
			<script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
  	</head>
  	<body>
  	
  	<nav class="nav">
		<ul>
			<li class="current"><a href="#">列表</a></li>
			<li><a href="${ctxPath }/pages/add.jsp">新增</a></li>
		</ul>
	</nav>
	
	<c:forEach items="${topicList}" var="topic" varStatus="i">
		<c:if test="${i.index==0 or i.index==3}">
		<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="thumbnails">
		</c:if>
				<li class="span4" id="li1">
						<div class="thumbnail">
							<img alt="" src="${ctxPath}/img/${topic.picPath }.jpg" />
							<div class="caption">
								<h3>
									<a href="${ctxPath }/main/topic/${topic.id}/1">${topic.title }</a>
								</h3>
								<p>
									${topic.content }
								</p>
								<p>
									
								</p>
							</div>
						</div>
					</li>
		<c:if test="${i.index==2 or i.index==6}">
				</ul>
			</div>
		</div>
		</div>
		</c:if>
	</c:forEach>
	
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="pagination pagination-large pagination-centered">
					<ul>
						<c:if test="${curPage >1}">
						<li>
							<a href="${ctxPath }/main/topic/list/${curPage-1}">Prev</a>
						</li>
						</c:if>
						<li>
							<a href="#">${curPage }</a>
						</li>
						<c:if test="${curPage < totalPage}">
						<li>
							<a href="${ctxPath }/main/topic/list/${curPage+1}">Next</a>
						</li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>

    <script src="${ctxPath }/basic/jquery-1.9.1.min.js"></script>
    <script src="${ctxPath }/basic/bootstrap.min.js"></script>
  	</body>
</html>