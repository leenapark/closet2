<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--한국어 문서만 검색 음성지원할때-->
<head>
<meta charset="UTF-8">
<!--브라우저가 문서를 해설할때 필요한 정보-->
<title>in my closet</title>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/codiboard.css">


</head>
<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<div class="location">코디하기 > 글읽기</div>

		<div id="codi_readBox">
			<!-- 제목, 요청기한 -->
			<div class="title_name gray_boader_box">제목</div>
			<div class="title gray_boader_box">title</div>
			<div class="date_limit gray_boader_box">작성자</div>
			<div class="editor gray_boader_box">editor</div>

			<div class="codi_drag gray_boader_box">
				<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
			</div>
			<div class="closet_drag gray_boader_box">봄 데이트룩으로 코디해주세요~</div>

		</div>

		<div id="codi_box">
			<div class="coment_box">
				<p>
					<span>최신순</span> 좋아요순
				</p>
				<button class="codi_coment_btn"  type="button" onclick="location.href='${pageContext.request.contextPath}/codiWrite'">답글달기</button>
			</div>
			<ul class="codi_line">

				<!-- 이미지 반복 영역 -->
				<li>
					<div class="codi_row">
						<div class="row01">별명이지롱 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>

					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>

					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
						
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>

					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
				<li>
					<div class="codi_row">
						<div class="row01">별명 <a href="#" class="follow_btn">팔로우</a><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
						<div class="row02_back gray_boader_box" data-toggle="modal" data-target="#myModal" >
							<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
						</div>
						<img class="row02" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
						<div class="row03"><i class="fa fa-heart-o" aria-hidden="true"> 10</i> <i class="fa fa-comment-o" aria-hidden="true"> 3</i></div>
					</div>
				</li>
			</ul>


		</div>

		<!--paging-->
		<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>

		<!--footer-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

	<!-- 이미지보기 팝업(모달)창 -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">RE:답글입니다.</h4>
				</div>
				<div class="modal-body">
					<img class="row02 gray_boader_box" src="${pageContext.request.contextPath}/assets/images/testimg.jpg">	
					
					<div class="text_box">
						<div class="text_top">답글 텍스트 읽기</div>
						<div class="re_text">
							<ul>
								<li>대댓달기 <span><a href="#">[수정]</a><a href="#">[삭제]</a></span></li>
								<li>대댓달기 <span><a href="#">[수정]</a><a href="#">[삭제]</a></span></li>
								<li>대댓달기 <span><a href="#">[수정]</a><a href="#">[삭제]</a></span></li>
								<li>대댓달기 <span><a href="#">[수정]</a><a href="#">[삭제]</a></span></li>
								<li>대댓달기 <span><a href="#">[수정]</a><a href="#">[삭제]</a></span></li>
							</ul>
						</div>
						<div class="icon_box">
							<i class="fa fa-heart-o" aria-hidden="true"> 10</i>
							<i class="fa fa-bookmark-o" aria-hidden="true"></i>
						</div>
						<input type="text"><button class="white_box">등록</button>
						
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary radius_btn">채택</button>
					<button type="button" class="red_btn btn btn-primary red">삭제</button>
				</div>
			</div>
		</div>
	</div>



</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>

<script type="text/javascript">
	$('#myModal').on('shown.bs.modal', function() {
		$('#myInput').focus()
	})
</script>

</html>
