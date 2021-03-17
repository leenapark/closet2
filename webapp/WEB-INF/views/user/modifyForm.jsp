<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--한국어 문서만 검색 음성지원할때-->
<head>
<meta charset="UTF-8">
<!--브라우저가 문서를 해설할때 필요한 정보-->
<title>회원 정보 수정</title>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css" type="text/css">
<!--user css-->


</head>

<body>
	<div id="wrap">



		<h1 class="n-hidden">회원 정보 수정</h1>

		<div class="form-area user">
			<form id="modifyForm" action="">

				<!-- header -->
				<header class="user-header">

					<div class="logo">
						<a href="${pageContext.request.contextPath}/">
							<img src="${pageContext.request.contextPath}/assets/images/logo.png">
						</a>
					</div>
					<p class="text-fontsname">회원 정보 수정</p>
				</header>
				<!-- header -->

				<!-- 회원 정보 수정 -->
				<div class="form-group">
					<label for="profile" class="form-label" aria-hidden="true"> 프로필 사진 <span class="essential">필수 입력</span>
					</label>
					<div class="basic-profile">
						<img src="${pageContext.request.contextPath}/assets/images/default.png">
					</div>
					<label for="change-profile-image" class="n-btn btn-sm btn-default">사진 선택</label>
					<input type="file" id="change-profile-image" class="n-hidden">
				</div>

				<div class="form-group">
					<label for="userId" class="form-label" aria-hidden="true"> ID</label>
					<input type="text" readonly class="d-input" tabindex="0" id="userId" name="uesrId" value="${authMember.id }">
					<strong>${authMember.id }</strong>
				</div>

				<div class="form-group">
					<label for="name" class="form-label" aria-hidden="true"> 이름 </label>
					<input type="text" readonly class="d-input" tabindex="0" id="name" name="name" placeholder="${authMember.name }" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="password" class="form-label" aria-hidden="true"> Password </label>
					<input type="text" class="d-input text-password" tabindex="0" id="password" name="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)" autocomplete="off">
				</div>

				<div class="form-group">
					<label for="nickName" class="form-label" aria-hidden="true"> 닉네임
					</label> <input type="text" class="d-input text-nickName" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="email" class="form-label" aria-hidden="true"> E-mail
					</label> <input type="text" class="d-input text-email" tabindex="0" id="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="gender" class="form-label" aria-hidden="true"> gender
					</label> <br> <label for="rdo-male">남</label> <input type="radio" id="rdo-male" name="gender" value="male"> <label for="rdo-female" class="gender-label">여</label> <input type="radio" id="rdo-female" name="gender" value="female">
				</div>

				
				<!-- submit -->
				<div id="modifyBtnDiv">
					<button type="submit" id="btn-join" class="d-btn">정보 수정</button>
				</div>


			</form>
		</div>
		<!-- modify form -->





	</div>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>

<script type="text/javascript">
	
</script>

</html>

