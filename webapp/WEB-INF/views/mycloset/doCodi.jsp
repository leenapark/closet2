<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--한국어 문서만 검색 음성지원할때-->
<head>
<meta charset="UTF-8">
<!--브라우저가 문서를 해설할때 필요한 정보-->
<title>in my closet</title>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/doCodi.css">


</head>

<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<div id="container">

			<!-- side profile&menu -->
			<c:import url="/WEB-INF/views/includes/sideProfileMenu.jsp"></c:import>

			<div id="codiMain" class="clearfix">
				<div id="main-top">
					<span id="closet-menu-title">코디하기</span>
					<button id="btn-fill-closet" class="btn btn-info float-r"
						onclick="location.href='${pageContext.request.contextPath}/myroom/codiWriteForm'">글쓰기</button>
				</div>

				<div id="main-middle">

					<!--셀렉트 박스  -->
					<div class="dropdown float-r">
						<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
							data-toggle="dropdown" aria-expanded="true">
							선택 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">전체</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">코디하기</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1" href="#">자랑하기</a></li>
						</ul>
					</div>

					<div class="clear"></div>

					<div id="codi_box">

						<ul class="codi_line">
							<!-- 이미지 반복 영역 -->
							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<%-- <div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"><i class="fa fa-trophy" aria-hidden="true"></i></a> <i class="fa fa-comment-o"
											aria-hidden="true"> 3</i>
									</div> --%>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<%-- <div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"><i class="fa fa-trophy" aria-hidden="true"></i></a> <i class="fa fa-comment-o"
											aria-hidden="true"> 3</i>
									</div> --%>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<%-- <div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"><i class="fa fa-trophy" aria-hidden="true"></i></a> <i class="fa fa-comment-o"
											aria-hidden="true"> 3</i>
									</div> --%>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>

							<li>
								<div class="codi_row">
									<div class="row01">별명 팔로우버튼</div>
									<a href="${pageContext.request.contextPath}/myroom/readCodi"> <img class="row02"
										src="${pageContext.request.contextPath}/assets/images/style0.jpg">
									</a>
									<div class="row03">
										<a href="${pageContext.request.contextPath}/readBestcodi"> <img
											src="${pageContext.request.contextPath}/assets/images/trandsetter.png">
										</a> <i class="fa fa-comment-o" aria-hidden="true"> 3</i>
									</div>
								</div>
							</li>
						</ul>


					</div>
					<!--//codi_box -->


				</div>

				<!--paging-->
				<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>
			</div>

			<div class="clear"></div>

		</div>

		<!--footer-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/includes/sideMenu.js"></script>

<script type="text/javascript">
	
</script>

</html>

