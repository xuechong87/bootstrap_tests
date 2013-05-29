<%@ page language="java" contentType="text/html;utf-8"
    pageEncoding="utf-8"%>
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
			<li ><a href="${ctxPath }/main/topic/list/1">列表</a></li>
			<li class="current" ><a href="${ctxPath }/pages/add.jsp">新增</a></li>
			<li ><a href="${ctxPath }/main/chart">统计</a></li>
		</ul>
	</nav>
	
	<div class="container-fluid ">
		<div class="row-fluid">
			<div class="span12  ">
				<form action="${ctxPath }/main/topic/add" method="post" class="form-horizontal" >
				<legend>New Photo</legend>
				<div class="control-group">
					<label class="control-label" for="title">title</label>
					<div class="controls">
						<input name="title" class="input-medium" id="titie" type="text">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="content">content</label>
					<div class="controls">
						<textarea name="content" rows="3" id="content" ></textarea>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn btn-info">submit</button>
					</div>
				
				</div>
				</form>
				
			</div>
		</div>
	</div>

    <script src="${ctxPath }/basic/jquery-1.9.1.min.js"></script>
    <script src="${ctxPath }/basic/bootstrap.min.js"></script>
  	</body>
</html>