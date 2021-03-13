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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css" type="text/css">
<!--user css-->


</head>

<body>
	<div id="wrap">



		<h1 class="n-hidden">closet 회원가입</h1>

		<div class="form-area user">
			<form id="joinForm" action="">
				<input type="text" name="checkId" value="0"> <input type="text" name="checkPassword" value="0"> <input type="text" name="checkConfirmPassword" value="0"> <input type="text" name="checkEmail" value="0"> <input type="text" name="checkNickname" value="0">


				<!-- header -->
				<header class="user-header">

					<div class="logo">
						<img src="${pageContext.request.contextPath}/assets/images/logo.png">
					</div>
					<p class="text-fontsname">회원가입</p>
				</header>
				<!-- header -->

				<!-- join form -->
				<div class="form-group">
					<label for="userId" class="form-label" aria-hidden="true"> ID <span class="essential">필수 입력</span></label>
					<input type="text" class="d-input text-uid" tabindex="0" id="userId" name="uesrId" placeholder="ID 입력(5~11자)" autocomplete="off" maxlength="11">
					<p class="validationId" id="hLayerid">
					
					<!-- 아이디 사용 가능 여부 -->
					
					</p>
				</div>

				<div class="form-group">
					<label for="password" class="form-label" aria-hidden="true"> Password <span class="essential">필수 입력</span></label>
					<input type="text" class="d-input text-password" tabindex="0" id="password" name="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)" autocomplete="off">
					<p class="n-validation" id="passwordValiMessage"></p>
				</div>

				<div class="form-group">
					<input type="text" class="d-input text-confirmPassword" tabindex="0" id="confirmPassword" name="confirmPassword" placeholder="비밀번호 확인" autocomplete="new-password">
					<p class="n-validation" id="passwordConfirmValiMessage"></p>
				</div>

				<div class="form-group">
					<label for="name" class="form-label" aria-hidden="true"> 이름 <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input text-name" tabindex="0" id="name" name="name" placeholder="이름" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="nickName" class="form-label" aria-hidden="true"> 닉네임 <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input text-nickName" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="email" class="form-label" aria-hidden="true"> E-mail <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input text-email" tabindex="0" id="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="gender" class="form-label" aria-hidden="true"> gender <span class="essential">필수 입력</span>
					</label> <br> <label for="rdo-male">남</label> <input type="radio" id="rdo-male" name="gender" value="male"> <label for="rdo-female" class="gender-label">여</label> <input type="radio" id="rdo-female" name="gender" value="female">
				</div>

				<!-- 약관 동의 -->
				<div id="agreementDivArea">

					<label for="chk-agree" class="form-label" aria-hidden="true"> 약관 동의 <span class="essential">필수 입력</span>
					</label> <br> <input type="checkbox" id="chk-agree" value="" name=""> <label for="chk-agree">서비스 약관에 동의합니다.</label>
				</div>
				<br>
				<!-- submit -->
				<div id="joinBtnDiv">
					<button type="submit" id="joinBtn" class="d-btn btn-primary">회원가입</button>
				</div>


			</form>
		</div>
		<!-- join form -->





	</div>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>

<script type="text/javascript">


function validateLengthUserIdWhenKeyup() {
	$('#userId').val($('#userId').val().trim());
	var userId = $('#userId');

	
	if (userId.val().length > 11) {
		// Id 길이 제한
		var limitUserId = $userId.val().substring(0, 11);
		$userId.val(limitUserId);
	}
}



$("#userId").on("propertychange change keyup paste input", function(){
	var userId = $("#userId").val().trim();
	console.log(userId.length);
	
	validateLengthUserIdWhenKeyup();
	
	if (userId.length == 0) {
		$("#hLayerid").removeClass('validation-pass')
				.html('아이디는 필수 정보입니다.');
		return false;
	}

	if (userId.length < 5) {
		$("#hLayerid").removeClass('validation-pass').html(
				'아이디는 5자 이상이어야 합니다');
		return false;
	}
	
	if (userId.length > 11) {
		var subUserId = $userId.val().substring(0, 11);
		$("#userId").val(subUserId);
	}

	$.ajax({		

		url : "${pageContext.request.contextPath }/user/checkid",		
		type : "post",
		data : {userId: userId},
		
		
		dataType : "text",
		success : function(response){
			/*성공시 처리해야될 코드 작성*/
			if(response == 'can'){
				console.log("can");
				$("#hLayerid").html("사용할 수 있는 아이디 입니다.");
			} else {
				console.log("cant");
				$("#hLayerid").html("사용할 수 없는 아이디 입니다.")
				
			}				
			console.log("response: " + response);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});


 




$("#password").on("propertychange change keyup paste input", function(){
	var password = $("#password").val().trim();
	if (password == '') {
		$('#passwordValiMessage').html('비밀번호는 필수정보입니다.');
	}
});


/*

function validatePassword(){
	var password = $("#password").val().trim();
	$("input[name='password']").val('');
	$("input[name='password']").val(password);
	
	if (password === '') {
		$('#passwordValiMessage').html('비밀번호는 필수정보입니다.');
		$("input[name='password']").attr('class', 'n-input input');
		$("input[name='confirmPassword']").attr('class', 'n-input input');
		$("passwordConfirmValiMessage").html('');
		isPassPassword = false;
		joinBtnActive(false);
		return;
	}
	
}

*/

$("#joinForm").on("submit", function(){
	
	// 패스워드 8자 이상
	var pw = $("#password").val();
	
	
});

</script>


</html>

