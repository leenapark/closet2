<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--한국어 문서만 검색 음성지원할때-->
<head>
<meta charset="UTF-8">
<!--브라우저가 문서를 해설할때 필요한 정보-->
<title>closetory 회원가입</title>


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
			<form id="joinForm" action="${pageContext.request.contextPath}/user/join" method="post">
				<input type="text" name="profileImg" value="${pageContext.request.contextPath}/assets/images/profile.png">


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
					<input type="text" class="d-input text-uid" tabindex="0" id="userId" name="id" placeholder="ID 입력(5~11자)" autocomplete="off" maxlength="11">
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
					</label>
					<input type="text" class="d-input text-nickName" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
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
					<label for="gender" class="form-label" aria-hidden="true"> gender <span class="essential">필수 입력</span></label>
					<br>
					<label for="rdo-male" class="gender-label">남</label> <input type="radio" id="rdo-male" name="gender" value="male">
					<label for="rdo-female" class="gender-label">여</label> <input type="radio" id="rdo-female" name="gender" value="female">
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




	$("#userId").on("propertychange blur change keyup paste input", function() {
		 chenkId();
			});

	// 비밀번호
	$(".pass").on("propertychange focusout change keyup paste input", function() {
		
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

		$("#confirmPassword").on("focusout", function() {
			if (confirmPassword.length == 0) {
				$("#passwordConfirmValiMessage").html('비밀번호 확인은 필수정보입니다.');
				return;
			}
		});

	});

	/***************이름*************/
	$("#name").on("blur", function() {
		var name = $("#name").val().trim();

		if (name.length === 0) {
			$("#nameValiMessage").html('이름은 필수 정보입니다.');
		} else {
			$("#nameValiMessage").html('');
		}
	});
	
	/***************닉네임*************/
	$("#joinNickName").on("blur", function() {
		var name = $("#joinNickName").val().trim();

		if (name.length === 0) {
			$("#hLayerNickName").html('닉네임은 필수 정보입니다.');
		} else {
			$("#hLayerNickName").html('');
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


	
	
	$(".form-area #joinForm").on("submit", function() {
		
		var id = $("#userId").val();
		if (id.length == 0) {
			console.log("id check");
			alert("아이디를 입력해주세요.");
			return false;
		} else if (id.length < 5) {
			alert("아이디는 5자 이상 입력해주세요.");
			return false;
		}
		
		// 패스워드 8자 이상
		var pw = $("#password").val();
		if (pw.length === 0){
			alert("비밀 번호를 입력해주세요.");
			return false;
		}
		
		// 이름 미입력
		var name = $("#name").val();
		if (name.length === 0) {
			alert("이름을 입력해주세요.");
			return false;
		}
		
		// 닉네임 미입력
		var nickName = $("#joinNickName").val();
		if (nickName.length === 0) {
			alert("닉네임을 입력해주세요.");
			return false;
		}
		
		// 이메일 미입력
		var email = $("#email").val();
		if (email.length === 0) {
			alert("이메일을 입력해주세요.");
			return false;
		}
		
		// 성별 미선택
		var gender = $('input[name="gender"]').is(":checked");
		console.log(gender);
		if (!gender) {
			alert("성별을 선택해주세요.");
			
			return false;
		}
		
		var check = $("#chk-agree").is(":checked");
		console.log(check);		
		if(!check) {
			alert("가입하시려면 약관에 동의 해주세요.");
			return false;
		}
		
		return true;

	});
	
	
	
	
	/*************함수 정의***********/
	
	function validateLengthUserIdWhenKeyup() {
		$('#userId').val($('#userId').val().trim());
		var userId = $('#userId');

		if (userId.val().length > 11) {
			// Id 길이 제한
			var limitUserId = $userId.val().substring(0, 11);
			$userId.val(limitUserId);
		}
	}
	
	
	function chenkId() {
		var userId = $("#userId").val().trim();
		console.log(userId.length);
		var num = userId.search(/[0-9]/g);
		var eng = userId.search(/[a-z]/ig);
		
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
		
		if (userId.search(/\s/) != -1) {
			$('#hLayerid').html("아이디는 공백 없이 입력해주세요.");
			return false;
		} else if (num < 0 || eng < 0) {
			$('#hLayerid').html("영문, 숫자를 혼합하여 입력해주세요.");
			return false;
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
	}
	

	/* 해야하는 일
	경고 css 추가로 주기
	경고 먹으면 submit 안되게 하기 */
	
	
	
</script>


</html>

