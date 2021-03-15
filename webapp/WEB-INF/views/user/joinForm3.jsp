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
					<label for="userId" class="form-label" aria-hidden="true"> ID <span class="essential">필수 입력</span></label> <input type="text" class="d-input text-uid" tabindex="0" id="userId" name="uesrId" placeholder="ID 입력(5~11자)" autocomplete="off" maxlength="11">
					<p class="validationId" id="hLayerid">

						<!-- 아이디 사용 가능 여부 -->

					</p>
				</div>

				<div class="form-group pass">
					<label for="password" class="form-label" aria-hidden="true"> Password <span class="essential">필수 입력</span></label> <input type="text" class="d-input text-password" tabindex="0" id="password" name="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)" autocomplete="off">
					<p class="n-validation" id="passwordValiMessage">

						<!-- 패스워드 안내문 -->

					</p>
				</div>

				<div class="form-group pass">
					<input type="text" class="d-input text-confirmPassword" tabindex="0" id="confirmPassword" name="confirmPassword" placeholder="비밀번호 확인" autocomplete="new-password">
					<p class="n-validation" id="passwordConfirmValiMessage">
						<!-- 비밀번호 확인 안내문 -->
					</p>
				</div>

				<div class="form-group">
					<label for="name" class="form-label" aria-hidden="true"> 이름 <span class="essential">필수 입력</span></label> <input type="text" class="d-input text-name" tabindex="0" id="name" name="name" placeholder="이름" autocomplete="off" maxlength="50">
					<p class="n-validation" id="nameValiMessage"></p>
				</div>

				<div class="form-group">
					<label for="nickName" class="form-label" aria-hidden="true"> 닉네임 <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input text-nickName" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
					<p id="hLayerNickName"></p>
				</div>

				<div class="form-group">
					<label for="email" class="form-label" aria-hidden="true"> E-mail <span class="essential">필수 입력</span>
					</label>
					<div class="n-form-layer" id="emailFromLayer">
						<input type="text" class="d-input text-email" tabindex="0" id="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="50">
						<ul id="emailDomainList" class="layer">
							<li>
								<button type="button">
									<span></span><em>gmail.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>naver.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>hanmail.net</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>nate.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>daum.net</em>
								</button>
							</li>
						</ul>
						<p id="hLayeremail"></p>
					</div>
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
	// DOM이 생성되면
	$("document").ready(function() {
		console.log("ready");
		$("li").click(function() {
			console.log("index: " + $(this).index());
			var index = $("li").index(this);
			console.log("index: " + index);
		});
	});
</script>

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

	$("#userId").on(
			"propertychange blur change keyup paste input",
			function() {
				var userId = $("#userId").val().trim();
				console.log(userId.length);

				validateLengthUserIdWhenKeyup();

				if (userId.length == 0) {
					$("#hLayerid").removeClass('validation-pass').html(
							'아이디는 필수 정보입니다.');
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
					data : {
						userId : userId
					},

					dataType : "text",
					success : function(response) {
						/*성공시 처리해야될 코드 작성*/
						if (response == 'can') {
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

	// 비밀번호
	$(".pass").on("propertychange change keyup paste input", function() {

		var password = $("#password").val().trim();
		console.log("password: " + password);
		var num = password.search(/[0-9]/g);
		var eng = password.search(/[a-z]/ig);
		var spe = password.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		$("input[name='password']").val('');
		$("input[name='password']").val(password);

		if (password === '') {
			$('#passwordValiMessage').html('비밀번호는 필수정보입니다.');
			$("passwordConfirmValiMessage").html('');
			isPassPassword = false;
			return;
		}

		if (password.search(/\s/) != -1) {
			$('#passwordValiMessage').html("비밀번호는 공백 없이 입력해주세요.");
			return false;
		} else if (num < 0 || eng < 0 || spe < 0) {
			$('#passwordValiMessage').html("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
			return false;
		} else {
			console.log("통과");
			$('#passwordValiMessage').html('');

		}

		var confirmPassword = $("#confirmPassword").val().trim();
		console.log("confirm: " + confirmPassword);

		if (confirmPassword !== '' && password.length > 7) {
			if (password !== confirmPassword) {
				$("#passwordConfirmValiMessage").html('비밀번호가 일치하지 않습니다.');
				return;
			} else {
				$("#passwordConfirmValiMessage").html('');
			}
		}

		$("#confirmPassword").on("blur", function() {
			if (confirmPassword.length == 0) {
				$("#passwordConfirmValiMessage").html('비밀번호 확인은 필수정보입니다.');
				return;
			}
		});

	});

	// 이름
	$("#name").on("blur", function() {
		var name = $("#name").val().trim();

		if (name.length === 0) {
			$("#nameValiMessage").html('이름은 필수 정보입니다.');
		}
	});
	
	
	/****************email************************/

	// 이메일 인풋창에서 포커스 아웃되었을 때 아무것도 적지 않거나 올바르지 않은 주소를 치면 나타나는 경고문
	$("#email").on("blur", function() {
		var trimedEmail = $("#email").val().trim();
		$("#email").val('');
		$("#email").val(trimedEmail);
	

	
		if (trimedEmail.length === 0) {
			$("#hLayeremail").html('이메일은 필수정보입니다.');
		} else {
			var email = $("#email").val();
			var isInvalidEmail = email.indexOf('\@') === -1
					|| email.indexOf('.') === -1;
	
			if (isInvalidEmail) {
				$("#hLayeremail").html("이메일 주소가 올바르지 않습니다.");
			} else {
				$("#hLayeremail").html("");
			}
			
		}
		
		

	});


	// 이메일 주소 도메인 선택했을 때
	$("#emailFromLayer ul").on("click","li button",function(e) {
		console.log("button click");	
		var email = $(this).text().trim();
		console.log("email: " + email.trim());
		
        e.preventDefault();
        $("#email").val(email);

		$("#emailDomainList").hide();
		$("#hLayeremail").html("");

        return false;
    });
	 
	 
	$("#email").on("keyup", function(e) {

		console.log("keyup")
		var value = e.currentTarget.value;
		console.log("value: " + value);

        $(this).parents('li').hide();

		if (value.length > 1 && value[value.length - 1] == "@") {
			console.log("keyup1")

			$("#emailFromLayer ul > li button span").text(value);
		}

		if (value.indexOf("@") != -1) {
			console.log("keyup2")

			e.target.parentElement.className = "n-form-layer is-active";
			$("#emailDomainList").show();
			$("#emailDomainList li").show();
			var inputDomain = $("#email").val().split('@')[1];
			console.log("inputDomain: " + inputDomain);
			var emailId = $("#email").val().split('@')[0];
			console.log("emailId: " + emailId);
			$("#emailFromLayer ul > li button span").text(emailId + '@');
			$("#emailDomainList li em").each(function () {
                if ($(this).text().indexOf(inputDomain) == -1) {
                    $(this).parents('li').hide();
                }
                
            });
			
		} else {
			console.log("parent")
			$('#emailFromLayer').attr("class", "n-form-layer");
			$('#emailDomainList').attr("style", "display: none;");
		}

	});


	/****************gender***************/
	
	
	$("#joinForm").on("submit", function() {

		// 패스워드 8자 이상
		var pw = $("#password").val();

	});
</script>


</html>

