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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/doCodi.css">
<!--리셋css-->


</head>

<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<div id="container">

			<div id="main" class="clearfix">
				<div id="main-top">
					<span id="closet-menu-title">코디하기 ></span> <span id="closet-category">글쓰기</span>
				</div>

				<div class="clear"></div>

				<form class="clearfix">
					<div class="form-group">
						<label for="doCodiTitle" class="formTitle">제목</label> <input type="text" id="doCodiTitle"
							placeholder="">
					</div>

					<div id="imgArea" class="float-l border000">
						<p>옷장에 있는 옷을 드래그하여 배치해보세요</p>
					</div>

					<div id="closetList" class="float-r border000">

						<div id="tabArea" class="clearfix" role="tabpanel">

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#all" aria-controls="top" role="tab"
									data-toggle="tab">전체</a></li>
								<li role="presentation"><a href="#top" aria-controls="top" role="tab" data-toggle="tab">상의</a></li>
								<li role="presentation"><a href="#pants" aria-controls="pants" role="tab"
									data-toggle="tab">하의</a></li>
								<li role="presentation"><a href="#shoes" aria-controls="shoes" role="tab"
									data-toggle="tab">신발</a></li>
								<li role="presentation"><a href="#outer" aria-controls="outer" role="tab"
									data-toggle="tab">외투</a></li>
								<li role="presentation"><a href="#aeccesory" aria-controls="aeccesory" role="tab"
									data-toggle="tab">악세서리</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="all">
									<ul>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/top2.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/top1.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/shoes4.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/shoes3.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/pants1.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/shoes2.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/top0.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/shoes1.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/shoes0.jpg">
											</div>
										</li>

										<li>
											<div class="thumbnail clothImg">
												<img src="${pageContext.request.contextPath }/assets/images/pants0.jpg">
											</div>
										</li>
									</ul>
								</div>

								<div role="tabpanel" class="tab-pane" id="top">

									<ul>
										<c:forEach begin="1" end="9" step="1" var="i">
											<li>
												<div class="thumbnail clothImg">
													<img src="${pageContext.request.contextPath }/assets/images/top${i%3}.jpg">
												</div>
											</li>
										</c:forEach>
									</ul>

								</div>
								<div role="tabpanel" class="tab-pane" id="pants">

									<ul>
										<c:forEach begin="1" end="10" step="1" var="i">
											<li>
												<div class="thumbnail clothImg">
													<img src="${pageContext.request.contextPath }/assets/images/pants${i%2}.jpg">
												</div>
											</li>
										</c:forEach>
									</ul>

								</div>
								<div role="tabpanel" class="tab-pane" id="shoes">

									<ul>
										<c:forEach begin="1" end="10" step="1" var="i">
											<li>
												<div class="thumbnail clothImg">
													<img src="${pageContext.request.contextPath }/assets/images/shoes${i%5}.jpg">
												</div>
											</li>
										</c:forEach>
									</ul>

								</div>
								<div role="tabpanel" class="tab-pane" id="outer">외투리스트</div>
								<div role="tabpanel" class="tab-pane" id="aeccesory">악세서리 리스트</div>
							</div>
						
							<div id="paging">
								<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>
							</div>
						
						</div>

					</div>

					<div class="clear"></div>

					<div id="content" class="form-group">
						<label for="doCodiContent" class="formTitle">내용</label>
						<textarea id="doCodiContent" rows="10"></textarea>
					</div>
					
					<div id="btnArea">
						<button type="submit" class="btn btn-default">등록</button>
						<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/myroom/doCodi'">취소</button>
					</div>
				</form>


			</div>


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

