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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/doCodi.css">


</head>

<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

		<div id="container">

			<div id="main" class="clearfix">
				<div id="main-top">
					<span id="closet-menu-title">베스트드레서 ></span> <span id="closet-category">글읽기</span>
				</div>

				<div class="clear"></div>

				<div id="main-middle" class="clearfix">

					<button id="writeBestdresser" class="btn float-r">위시리스트 저장</button>
					<div id="like" class="float-r">
						<button id="likeBtn" data-like="unlike">
							<i class="fa"></i>
						</button>
						0
					</div>


					<div class="clear"></div>

					<div class="form-group">
						<label for="bestDresserTitle" class="formTitle">제목</label> <input type="text"
							id="bestDresserTitle" placeholder="" readonly>
						<div id="writerLabel">작성자</div>
						<div id="bestDresserWriter" class="float-r">패션왕 우기명</div>
					</div>

					<div id="imgArea" class="float-l border000">
						<img src="${pageContext.request.contextPath }/assets/images/style0.jpg">
					</div>

					<div id="codiContent" class="float-r borderBF">
						<div id="contentTitle" class="float-l">내용</div>
						<div class="clear"></div>
						<p>이 옷은 날 패션왕으로 만들어 줬지. 이해할 수 있겠냐? 이 패션을?</p>

					</div>

					<div class="clear"></div>

					<div id="tagArea" class="float-l">
						<ul>
							<li>태그1</li>
							<li>태그태그2</li>
							<li>태그태그태그3</li>
							<li>태그태그태그태그4</li>
							<li>태그태그태그태그태그5</li>
						</ul>
					</div>
					
					<div id="buttonArea" class="float-r">
						<button id="bestDresserDel" class="btn btn-danger float-l">삭제</button>
						<button id="bestDresserList" class="btn btn-default float-l" onclick="location.href='${pageContext.request.contextPath}/bestcodi'">목록</button>
					</div>
				</div>
				
				<div id="main-foot">
					<div id="replyWriteForm">
						<div class="replyWriter">악플러</div>
						<textarea id="replyInput" rows="3">원하는 내용을 입력해 주세요.</textarea>
						<button class="formTitle float-r">등록</button>	
						<div class="clear"></div>				
					</div>
					
					<div id="replyList">
						<ul>
							<li class="bottomLine">
								<div class="replyWriter">착한사람증후군</div>
								<div class="replyContent">오 정말 멋진 코디네요! 저도 참고해야겠어요~</div>
								<div class="writeDate">2021.02.25 23:27</div>
								<div class="float-r">
									<button class="formTitle">수정</button>	
									<button class="formTitle">삭제</button>
								</div>	
								<div class="clear"></div>	
							</li>
							
							<li class="bottomLine">
								<div class="replyWriter">착한사람증후군</div>
								<div class="replyContent">오 정말 멋진 코디네요! 저도 참고해야겠어요~</div>
								<div class="writeDate">2021.02.25 23:27</div>
								<div class="float-r">
									<button class="formTitle">수정</button>	
									<button class="formTitle">삭제</button>
								</div>	
								<div class="clear"></div>
							</li>
							
							<li class="bottomLine">
								<div class="replyWriter">착한사람증후군</div>
								<div class="replyContent">오 정말 멋진 코디네요! 저도 참고해야겠어요~</div>
								<div class="writeDate">2021.02.25 23:27</div>
								<div class="float-r">
									<button class="formTitle">수정</button>	
									<button class="formTitle">삭제</button>
								</div>	
								<div class="clear"></div>
							</li>
						</ul>					
					</div>
					
					<div class="clear"></div>
				</div>

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
$(document).ready(function() {
	
	var like = $("#likeBtn").data("like");
	
	if(like=="like"){
		$("#likeBtn i").addClass("fa-heart");
	}else{
		$("#likeBtn i").addClass("fa-heart-o");
	}

});

$("#likeBtn").on("click", function(){
	if(like=="like"){
		$("#likeBtn i").removeClass("fa-heart");
		$("#likeBtn i").addClass("fa-heart-o");
		like = "unlike";
	}else{
		$("#likeBtn i").removeClass("fa-heart-o");
		$("#likeBtn i").addClass("fa-heart");
		like = "like";
	}
	console.log(like);
});

$("#tagArea ul li").prepend("#");

$("#bestDresserTitle").val(" 내 패션이 정답이다.")
</script>

</html>

