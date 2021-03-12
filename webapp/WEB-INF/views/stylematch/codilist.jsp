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
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css"> <!--리셋css-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/codiboard.css">
		
	
	</head>
	<body>
		<div id="wrap">
		    <!--header-->
		    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
			<div class="location">코디하기 > 전체</div>
			<div id="contents" >
				<!--검색 , 글쓰기버튼  -->
				<form class="top_box">
					<input type="search" value="별명/글제목 검색">
					<button class="gray_btn">검색</button>
					<button class="blue_btn" type="button" onclick="location.href='${pageContext.request.contextPath}/codiWrite'"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 글쓰기</button>
				</form>
			
				<div id="codi_box">
				
					<ul class="codi_line">
						<!-- 이미지 반복 영역 -->
						<li>
							<div class="codi_row">
								<div class="row01">별명이지롱 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 기한 만료</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>			
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>			
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>			
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>			
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>	
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>			
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>				
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>		
						</li>
						<li>
							<div class="codi_row">
								<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a></div>
								<div class="row02_back gray_boader_box" onclick="location.href='${pageContext.request.contextPath}/codiRead'">
									<p>제목</p>
								</div>
								<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
								<div class="row03"><i class="fa fa-calendar" aria-hidden="true"> 04-05</i><i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
							</div>		
						</li>
					</ul>
					
				
				</div><!--//codi_box -->

			</div><!--//contents -->
			
			<!--paging-->
			<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>

		
		    <!--footer-->
		    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div> 
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
	<script type="text/javascript">
		
	</script>

</html>

