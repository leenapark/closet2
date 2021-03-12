<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko"><!--한국어 문서만 검색 음성지원할때-->
	<head>
	    <meta charset="UTF-8"> <!--브라우저가 문서를 해설할때 필요한 정보-->
	    <title>in my closet</title>
	    
	    
	    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	    
	    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css"> <!--리셋css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/closet.css"> <!--리셋css-->
		
		
	</head>
	
	<body>
		<div id="wrap">
		    <!--header-->
		    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
			<div id="container" class="clearfix">	
				<!-- side profile -->
				<c:import url="/WEB-INF/views/includes/sideProfileMenu.jsp"></c:import>
				
				<div id="main">
					<div id="main-top">
						<span id="closet-menu-title">코디구함 작성 글</span>
					</div>
					<div id="codiGuhamCateDiv">
						<select id="codiGuhamCate" name="codiGuhamCategory">
							<option value="">전체</option>
							<option value="">기한만료</option>
							<option value="">진행중</option>
						</select>
					</div>
					
					<div id="main-middle" class="clearfix">
						<c:forEach var="i" begin="0" end="12">
							<div style="display: inline-block;">
								<div id="codiGuhamImgBorder${i}" class="codiGuhamImgBox">
									<img class="closeBtn" src="${pageContext.request.contextPath}/assets/images/delete.jpg">
									<img>
								</div>
								<div class="clearfix">
									<p id="reply${i}" class="replyNum">답글 수: 0</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>
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

