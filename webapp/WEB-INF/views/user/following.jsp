<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>follow</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/closet.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/follow.css">


</head>
<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		
		<div id="container">

			<!-- side profile&menu -->
			<c:import url="/WEB-INF/views/includes/sideProfileMenu.jsp"></c:import>

			<div id="follow-main">
				<div id="follow-menu">
					<ul>
						<li class="page-follow following-active"><a target="_self" href="${pageContext.request.contextPath}/user/following">following or 팔로잉</a></li>
					<li class="page-follow"><a target="_self" href="${pageContext.request.contextPath}/user/followers">followers or 팔로워</a></li>
					</ul>
				</div>

				<div id="follow-content" class="clearfix"></div>
			</div>
			
		</div>

		<!--footer-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>


</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/sideMenu.js"></script>

<script type="text/javascript">
	
</script>
</html>