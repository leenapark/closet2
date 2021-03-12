<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div style="display: inline-block;">
		<div id="side_profile">
			<div>
				<span id="today">Today:10000</span> <span id="total">Total:10000</span>
			</div>
		
			<img id="profileImg" src="${pageContext.request.contextPath}/assets/images/default.png">
		
			<div id="nickFollDiv">
				<span id="nickName">메뚜기(hijava)님</span> <span id="tofollow">팔로우</span>
			</div>
		
			<div>
				<span id="follow"><a href="${pageContext.request.contextPath}/user/followers">팔로워</a>: 0</span> <span id="following"><a href="${pageContext.request.contextPath}/user/following">팔로잉</a>: 0</span>
			</div>
		</div>
	
		<div id="side_menu">
			<ul id="">
				<li>
					<div class="side_top" id="closet">옷장</div>
					<ul class="side_sub" id="closet_sub">
						<li><a href="${pageContext.request.contextPath}/myroom/closet">전체</a></li>
						<li><a href="#">상의</a></li>
						<li><a href="#">하의</a></li>
						<li><a href="#">아우터</a></li>
						<li><a href="#">신발</a></li>
						<li><a href="#">악세서리</a></li>
					</ul>
				</li>
				<li>
					<div class="side_top">
						<a href="${pageContext.request.contextPath}/myroom/doCodi">코디하기</a>
					</div>
					
				</li>
				
				<%-- <li>
					<div class="side_top" id="styleZip">스타일.zip</div>
					<ul class="side_sub" id="styleZip_sub">
						<li><a href="${pageContext.request.contextPath}/myroom/styzipList">코디구함 작성글</a></li>
						<li><a href="${pageContext.request.contextPath}/myroom/wishList">위시리스트</a></li>
					</ul>
				</li> 
				단일 메뉴화
				--%>
				<li>
					<div class="side_top">
						<a href="${pageContext.request.contextPath}/myroom/styzipList">코디구함 작성글</a>
					</div>
					
				</li>
				
				<li>
					<div class="side_top">
						<a href="${pageContext.request.contextPath}/myroom/wishList">위시리스트</a>
					</div>
					
				</li>
			
				<c:if test="${sessionScope.myRoomVo.id == sessionScope.authMember.id}">
					<li>
						<div class="side_top"><a href="${pageContext.request.contextPath}/user/modifyform">회원정보수정</a></div>
					</li>
				</c:if>
			</ul>
		</div>
	</div>