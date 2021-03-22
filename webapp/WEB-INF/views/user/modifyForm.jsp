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
			<%-- <form id="modifyForm" action="${pageContext.request.contextPath}/user/modify" method="" enctype="multipart/form-data">
 --%>
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
				<!-- 프로필 부분 -->
<%-- 				<form method="post" action="${pageContext.request.contextPath }/user/profile" enctype="multipart/form-data">
 --%>				
 				<div class="form-group" id="profile-image-area">
					<label for="profile" class="form-label" aria-hidden="true"> 프로필 사진 <span class="essential">필수 입력</span>
					</label>
					<div class="basic-profile">
						<img src="${pageContext.request.contextPath}/upload/${modifyUser.profileImg }" id="profile">
					</div>
					<div class="profile-btn">
						<button type="button" id="change-profile-image-btn" class="n-btn btn-sm btn-default cert-hidden">프로필 변경</button>
					</div>
				</div>
				
				<div class="form-group" id="change-profile-image-area">
					<label for="profile" class="form-label" aria-hidden="true"> 프로필 사진 <span class="essential">필수 입력</span>
					</label>
					<div class="change-profile">
						<img src="${pageContext.request.contextPath}/upload/${modifyUser.profileImg }" id="profile-change-image">
					</div>
					<div class="profile-btn">
						<button type="button" id="change-profile-image-btn" class="n-btn btn-sm btn-default cert-hidden">프로필 변경</button>
					</div>
					<div class="btn-group">
						<label for="profile-image" class="n-btn btn-sm">프로필 변경</label>
						<input type="file" id="profile-image" name="profile-image" class="n-hidden">
						<button type="button" class="n-btn btn-sm" id="change-default-image-btn">기본 프로필</button>
						<input type="text" id="defaultImage" name="defaultImage">
						<button type="button" class="n-btn btn-sm btn-lighter" id="change-profile-cancel-btn">
							취소
						</button>
						<button type="button" class="n-btn btn-sm btn-accent disabled" id="change-profile-image-finish-btn">
							완료
						</button>
					</div>
				</div>
				<!-- </form> -->

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
					<div class="change-password-area">
						<button type="button" id="change-password-btn" class="n-btn btn-sm btn-default cert-hidden">비밀번호 변경</button>
						
						<div class="modify-pass">
							<div class="pass-now">
								<label for="password">현재 비밀번호</label>
								<input type="password" class="d-input" tabindex="0" id="password" name="password" autocomplete="off">
								<input type="hidden" id="hidden-pass" value="${modifyUser.password }">
								<p class="n-validation" id="passwordValiMessage">

									<!-- 패스워드 안내문 -->
			
								</p>
							</div>
							<div class="pass-new">
								<label for="password">새 비밀번호</label>
								<input type="text" class="d-input" tabindex="0" id="new-password" name="password" autocomplete="off">
								<p class="n-validation" id="newPasswordValiMessage">
									<!-- 새비밀번호 안내문 -->
								</p>
							</div>
							<div class="pass-new">
								<label for="password">새 비밀번호 확인</label>
								<input type="text" class="d-input" tabindex="0" id="new-confirm-password" name="password" autocomplete="off">
								<p class="n-validation" id="newPasswordConfirmValiMessage">
									<!-- 비밀번호 확인 안내문 -->
								</p>
							</div>
							
							<div class="pass-btn-group">
								<button type="button" class="n-btn btn-sm btn-lighter" id="change-password-cancel-btn">
									취소
								</button>
								<button type="button" class="n-btn btn-sm btn-accent disabled" id="change-password-finish-btn">
									완료
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="nickName" class="form-label" aria-hidden="true"> 닉네임
					</label> <input type="text" class="d-input text-nickName" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="email" class="form-label" aria-hidden="true"> E-mail
					</label>
					<input type="text" class="d-input text-email" tabindex="0" id="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="50">
				</div>

				<div class="form-group">
					<label for="gender" class="form-label" aria-hidden="true"> gender
					</label> <br> <label for="rdo-male">남</label> <input type="radio" id="rdo-male" name="gender" value="male"> <label for="rdo-female" class="gender-label">여</label> <input type="radio" id="rdo-female" name="gender" value="female">
				</div>

				
				<!-- submit -->
				<div id="modifyBtnDiv">
					<button type="submit" id="btn-join" class="d-btn">정보 수정</button>
				</div>


			<!-- </form> -->
		</div>
		<!-- modify form -->





	</div>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>


<script type="text/javascript">

//프로필 변경 누를 경우 안에 숨겨져 있던 버튼이 나타남
$("#change-profile-image-btn").on("click", function(){
	$(".btn-group").attr("class", "btn-group is-active");
});

$("#change-profile-cancel-btn").on("click", function(){
	$(".btn-group").removeClass("is-active");
});




$(document).ready(function(){
	var maxUploadSize = 1048576;
    var maxUploadSizeMsg = '최대 파일 사이즈는 1MB 입니다.';
	
    $("#change-profile-image-btn").click(function(e){
        e.preventDefault();
        $("#profile-image-area").css("display","none");
        $("#change-profile-image-area").css("display", "block");
    });

    $("#change-profile-cancel-btn").click(function(e){
        e.preventDefault();
        $("#profile-image").val('');
        $("#profile-image-area").css("display", "block");
        $("#change-profile-image-area").css("display", "none");
    });

    $("#change-profile-image-finish-btn").click(function (e) {
        e.preventDefault();
        var files = $("#profile-image")[0].files[0];
        var defaultImageValue = $('#defaultImage').val();
        
        console.log(files);
        console.log(defaultImageValue);
        
        if ($('#defaultImage').val() == '') {
            defaultImageValue = 'false';
            console.log(defaultImageValue);
        }

        if (null != files || defaultImageValue === 'true') {
        	console.log("이미지 업로드 부분");
            var filesName;

            if (defaultImageValue !== 'true' && (filesName = files.name) && !(filesName.toLowerCase().endsWith("jpg") || filesName.toLowerCase().endsWith("png") || filesName.toLowerCase().endsWith("jpeg") || filesName.toLowerCase().endsWith("gif"))) {
                alert('gif/jpg/png 파일만 등록할 수 있습니다.');
                return false;
            } else if (defaultImageValue !== 'true' && files.size > maxUploadSize) {
                alert(maxUploadSizeMsg);
                return false;
            } else {

                var message;

                if (defaultImageValue == 'true'){
                    message = "기본 이미지로 변경하시겠습니까?";
                } else {
                    message = "프로필 사진을 변경하시겠습니까?";
                }

                if(confirm(message)) {
					
                	var id = $("#userId").val();
                	console.log(id);
                	
                    var formData = new FormData();
                                        
                    formData.append('file', files);
                    formData.append('defaultImage', defaultImageValue);
					formData.append('id', id)

					
                    $.ajax({
                            method: "post",
                            url: "${pageContext.request.contextPath}/user/profile",
                            data: formData,
                            timeout : 10000,
                            cache: false,
                            processData: false,
                            contentType: false,
                            
                            dataType: "json",
                            success : function (userVo) {
	                            	var result = "${pageContext.request.contextPath}/upload/" + userVo.profileImg;
									console.log(userVo);
                                	console.log("여기 1번");
                                	$("#profile").attr("src", result);
                            		$("#profile-change-image").attr("src", result);
                                	$("#profile-image-area").css("display", "");
                                    $("#change-profile-image-area").css("display", "none");
                                    $("#profile-image").val('');

                            	
                                    //location.reload();                                	
                                    
                            }, error : function () {
                                alert('프로필 이미지 저장에 실패하였습니다.');
                            }, fail : function () {
                                alert('프로필 이미지 저장에 실패하였습니다.');
                            }
                        },
                        true
                    )
                }
            }
        } else {
            alert('사진파일을 선택해 주세요.');
        }
    });
    
    
    
});


$("#profile-image").on("change", function(e) {
	console.log("이미지 미리보기 변경");
    e.preventDefault();
    var selectedFile = e.target.files;
    
             
            if (null != selectedFile[0]) {
            	console.log("이미지 미리보기");
            	readURL(this);

            }
        
    
});

function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();
       reader.onload = function (e) {
           $('#profile-change-image').attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
}


/************************password **********************/
$("#change-password-btn").on("click", function(){
	$(".modify-pass").attr("class", "modify-pass is-active");
});

$("#change-password-cancel-btn").on("click", function(){
	$(".modify-pass").removeClass("is-active");
});

$(".pass-now").on("propertychange focusout change keyup paste input", function(){
	console.log("비밀번호 영역");
	
	var password = $("#hidden-pass").val();
	console.log(password);
	var pw = $("#password").val();
	console.log(pw);
	var newPassword = $("#new-password").val();
	console.log(newPassword);
	
	if (password !== pw) {
		console.log("password 불일치");
		$("#password").attr("class", "d-input input-reject");
		$("#passwordValiMessage").attr("class", "n-validation");
		$('#passwordValiMessage').html('비밀번호가 일치하지 않습니다.');
		$("#newPasswordValiMessage").html('');
		$("#newPasswordConfirmValiMessage").html('');
		return;
	} else if(password === pw) {
		console.log("password 일치");
		$("#password").attr("class", "d-input input");
		$("#passwordValiMessage").attr("class", "n-validation validation-pass");
		$("#passwordValiMessage").html('비밀번호가 일치합니다.');
		return;
	}
	
});



if (password === newPassword) {
	console.log("새헌비번 일치");
	$("#password").attr("class", "d-input input-reject");
	$("#new-password").attr("class", "d-input input-reject");

	$("#newPasswordValiMessage").html('현재 비밀번호와 동일합니다.');
	$("#newPasswordConfirmValiMessage").html('');
	
	return;
}


</script>

</html>

