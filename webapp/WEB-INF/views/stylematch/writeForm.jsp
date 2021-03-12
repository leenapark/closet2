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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/codiboard.css">
		
	
	</head>
	<body>
		<div id="wrap">
		    <!--header-->
		    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		    <div class="location">코디하기 > 글쓰기</div>

			<div id="codi_writeBox">
				<!-- 제목, 요청기한 -->
				<div class="title_name gray_boader_box text-center">제목</div>
				<input class="title gray_boader_box" type="text">
				<div class="date_limit gray_boader_box text-center">요청기한</div>
				<input class="date gray_boader_box" type="date">
				
				<div class="codi_drag gray_boader_box">
					옷장에 있는 옷을 드래그하여 배치해보세요
				</div>
				<div class="closet_drag gray_boader_box">
					<div role="tabpanel">

					  <!-- Nav tabs -->
					  <ul class="nav nav-tabs" role="tablist">
					    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
					    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">상의</a></li>
					    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">하의</a></li>
					    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">신발</a></li>
					    <li role="presentation"><a href="#outer" aria-controls="outer" role="tab" data-toggle="tab">아우터</a></li>
					    <li role="presentation"><a href="#accessory" aria-controls="accessory" role="tab" data-toggle="tab">악세서리</a></li>
					  </ul>
					
					  <!-- Tab panes -->
					  <div class="tab-content">
					    <div role="tabpanel" class="tab-pane active" id="home">전체</div>
					    <div role="tabpanel" class="tab-pane" id="profile">상의</div>
					    <div role="tabpanel" class="tab-pane" id="messages">하의</div>
					    <div role="tabpanel" class="tab-pane" id="settings">신발</div>
					    <div role="tabpanel" class="tab-pane" id="outer">아우터</div>
					    <div role="tabpanel" class="tab-pane" id="accessory">악세서리</div>
					  </div>
				
					</div>
					
				</div>
				<div class="check_box  text-center">
					<label>남</label><input type="radio" name="gender" checked="checked">
					<label>여</label><input type="radio" name="gender">
					<label>유니섹스</label><input type="radio" name="gender">
				</div>
				
				<textarea class="codi_text text-center">코디구함 내용입력</textarea>
				<div class="but_box text-center">
					<button>등록</button>
					<button>취소</button>
				</div>
			</div>



		
		    <!--footer-->
		    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div> 
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
	
	<script type="text/javascript">
		
	</script>

</html>

