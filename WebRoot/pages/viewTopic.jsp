<%@ page language="java" contentType="text/html;utf-8" pageEncoding="utf-8"%>
<%@ include file="common.jsp" %>

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
			<li ><a href="${ctxPath }/main/topic/list/1">列表</a></li>
			<li><a href="${ctxPath }/pages/add.jsp">新增</a></li>
			<li ><a href="${ctxPath }/main/chart">统计</a></li>
			<li class="current" ><a href="#">评论</a></li>
		</ul>
	</nav>
	
	
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="span12">
						<div class="media well">
							 <a href="#" class="pull-left">
							 <img src="${ctxPath}/img/${topic.picPath}.jpg" style="height:70px;" class="media-object" alt='' /></a>
							<div class="media-body">
								<h4 class="media-heading">
									${topic.title}
								</h4> 
								${topic.content}
							</div>
						</div>
					</div>
				</div>
				<c:if test="${not empty commentList}">
					<c:forEach var="com" items="${commentList}">
					<div class="row-fluid">
						<div class="span11 offset1">
							<div class="media well">
								<div class="media-body">
									<h4 class="media-heading">
										${com.title}
									</h4>
									${com.content}
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</c:if>
				
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="pagination pagination-large pagination-centered">
					<ul>
						<c:if test="${curPage >1}">
						<li>
							<a href="${ctxPath }/main/topic/${topic.id}/${curPage-1}">Prev</a>
						</li>
						</c:if>
						<li>
							<a href="#">${curPage }</a>
						</li>
						<c:if test="${curPage < totalPage}">
						<li>
							<a href="${ctxPath }/main/topic/${topic.id}/${curPage+1}">Next</a>
						</li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid ">
		<div class="row-fluid">
			<div class="span11 offset1 ">
				<form action="${ctxPath }/main/topic/comment/add" method="post" >
				  <fieldset>
				  	<input type="hidden" name="topicId" value="${topic.id}">
					<legend>message</legend>
					<label>title</label>
					<input class="input-medium" name="title" type="text">
					<label>content</label>
					<textarea rows="3" name="content" ></textarea>
					<button type="submit" class="btn btn-info">submit</button>
				  </fieldset>
				</form>
				
			</div>
		</div>
	</div>

	
    <script src="${ctxPath }/basic/jquery-1.9.1.min.js"></script>
    <script src="${ctxPath }/basic/bootstrap.min.js"></script>
  	</body>
</html>