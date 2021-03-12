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
					<span id="closet-menu-title">코디하기 ></span> <span id="closet-category">글읽기</span>
				</div>

				<div class="clear"></div>

				<div id="main-middle" class="clearfix">

					<div class="form-group">
						<button id="writeTS" class="btn float-r">
							<img src="${pageContext.request.contextPath}/assets/images/trandsetter-o.png"> Trend
							Setter 등록
						</button>
						<div class="clear"></div>
						<label for="doCodiTitle" class="formTitle">제목</label> <input type="text" id="codiTitle"
							placeholder="" readonly>
					</div>

					<div id="imgArea" class="float-l border000">
						<img src="${pageContext.request.contextPath }/assets/images/style0.jpg">
					</div>

					<div id="codiContent" class="float-r borderBF">
						<div id="contentTitle" class="float-l">내용</div>
						<div class="clear"></div>
						<p>이 옷을 언제 입을까나 치즈스틱이나 사먹자 ///////////// 이 옷을 언제 입을까나 치즈스틱이나 사먹자</p>

					</div>

					<div class="clear"></div>

					<div id="buttonArea" class="float-r">
						<button id="codiMdify" class="btn btn-default float-l">수정</button>
						<button id="codiDel" class="btn btn-danger float-l">삭제</button>
						<button id="codiList" class="btn btn-default float-l"
							onclick="location.href='${pageContext.request.contextPath}/myroom/doCodi'">목록</button>
					</div>
				</div>

			</div>


		</div>

		<!--footer-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>


	<!-- trend setter 입력 모달 창 -->
	<div id="writeTSModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">TREND SETTER 글쓰기</h4>
				</div>
				<div class="modal-body clearfix">
					<div id="madalImgArea" class="float-l border000">
						<img src="${pageContext.request.contextPath }/assets/images/style0.jpg">
					</div>

					<div id="modal-content" class="form-group float-r">
						<label for="titleTS" class="formTitle">제목</label> <input type="text" id="titleTS"
							placeholder=""> <label for="contentTS" class="formTitle">내용</label>
						<textarea id="contentTS"></textarea>
					</div>

					<div class="check_box text-center float-l">
						<label>남</label><input type="radio" name="gender" checked="checked"> <label>여</label><input
							type="radio" name="gender"> <label>유니섹스</label><input type="radio" name="gender">
					</div>

					<div class="clear"></div>

					<div class="tagArea clearfix">
						<div class="formTitle float-l">태그</div>
						
						<div class="clear">태그 영역</div>
						
					</div>

				</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-primary">등록</button>
				<div class="warning"> TREND SETTER 게시글은 수정이 안되오니 신중하게 등록하시기 바랍니다. </div>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/includes/sideMenu.js"></script>

<script type="text/javascript">
	$("#codiTitle").val(" 제목 input창이 너무길어보이고 치즈스틱이 생각난다 츄릅")

	$("#writeTS").on("click", function() {
		$("#writeTSModal").modal();
	});
</script>

</html>

