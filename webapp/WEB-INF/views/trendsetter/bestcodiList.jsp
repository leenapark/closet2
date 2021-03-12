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

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css"> <!--리셋css-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bestcodiboard.css">
	
</head>
<body>
	<div id="wrap">
		<!--header-->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<div class="location">베스트드레서 > 전체</div>
		<div id="contents" >
			<!--검색 , 글쓰기버튼  -->
			<div class="top_box">
				<input type="search" value="별명/글제목 검색">
				<button>검색</button>
				<button id="btnTagSearch">태그검색</button>
			</div>
					
			<form id="tagList_box">
				<div class="tag_box">
					<ul>
						<li class="tag">눈오는날</li>
						<li class="tag">비오는날</li>
						<li class="tag">결혼식룩</li>
						<li class="tag">행사</li>
						<li class="tag">데일리룩</li>
						<li class="tag">중요한날</li>
						<li class="tag">흐린날씨</li>
						<li class="non_tag">비활성화태그</li>
						<li class="tag">활성화태그</li>
						<li class="tag">태그</li>
						<li class="tag">데일리룩</li>
						<li class="tag">중요한날</li>
						<li class="tag">흐린날씨</li>
						<li class="non_tag">비활성화태그</li>
						<li class="tag">활성화태그</li>
						<li class="tag">태그</li>
					</ul>
				</div>
			</form>
			<!-- //tagList_box -->		
			<div id="codi_box">
					
				<ul class="codi_line">
					<!-- 이미지 반복 영역 -->
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
					<li>
						<div class="codi_row">
							<div class="row01">
								<div class="nickName">별명 </div>
								<div class="btnFollow">팔로우</div> 
								<div class="btnWishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
							</div>
							<!-- //row01 -->
							<div class="row02_back" onclick="location.href='${pageContext.request.contextPath}/readBestcodi'">
								<p>제목이 표시되는 부분입니다. 몇줄까지 표시되는지 상의해야합니다.</p>
							</div>
							<!-- //row02-back -->
							<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
							<div class="row03">
								<div class="likes"><i class="fa fa-heart-o" aria-hidden="true"> 30개</i></div>
								<div class="comments"><i class="fa fa-comment-o" aria-hidden="true"> 15개</i></div>
							</div>	
							<!-- //row03 -->					
						</div>
						<!-- //codi_row -->
					</li>
				</ul>
				
				<div style="text-align: center;">
				<nav>
					<ul class="pagination pagination-lg">
						<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
			
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
			
						<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
				</div>	
			</div>
			<!-- //codi_box -->
			
		</div>
		<!-- //contents -->

		<!--footer-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div> 
	<!-- //wrap -->

	<!-- 모달창 영역 -->
	<!-- 태그검색 모달 -->
	<div class="modal fade" id="tagSearchModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">태그 검색</h4>
				</div>
				<div class="modal-body"><!-- style="overflow-y:scroll; height:500px" -->
					<div class="tagCate">날씨/계절별</div>
					<div class="tag_box">					
						<ul>
							<li class="tag">눈</li>
							<li class="tag">비</li>
							<li class="tag">눈오는날</li>
							<li class="tag">비오는날</li>
							<li class="tag">눈올때</li>
							<li class="tag">비올때</li>
							<li class="tag">더운날</li>
							<li class="tag">추운날</li>
							<li class="tag">비오는날룩</li>
							<li class="tag">눈오는날룩</li>
							<li class="tag">비올때</li>
							<li class="tag">안개낀날</li>
							<li class="tag">더운날룩</li>
							<li class="tag">봄</li>
							<li class="tag">여름</li>
							<li class="tag">가울</li>
							<li class="tag">겨울</li>
							<li class="tag">미세먼지</li>
							<li class="tag">안개</li>
							<li class="tag">간절기</li>
							<li class="tag">환절기</li>
							<li class="tag">눈</li>
							<li class="tag">비</li>
							<li class="tag">눈오는날</li>
							<li class="tag">비오는날</li>
							<li class="tag">눈올때</li>
							<li class="tag">비올때</li>
							<li class="tag">더운날</li>
							<li class="tag">추운날</li>
							<li class="tag">비오는날룩</li>
							<li class="tag">눈오는날룩</li>
							<li class="tag">비올때</li>
							<li class="tag">안개낀날</li>
							<li class="tag">더운날룩</li>
							<li class="tag">봄</li>
							<li class="tag">여름</li>
							<li class="tag">가울</li>
							<li class="tag">겨울</li>
							<li class="tag">미세먼지</li>
							<li class="tag">안개</li>
							<li class="tag">간절기</li>
							<li class="tag">환절기</li>
						</ul>
					</div>
					
					<br>
					
					<div class="tagCate">색상별</div>
					<div class="tag_box">
						<ul>
							<li class="tag">빨강</li>
							<li class="tag">주황</li>
							<li class="tag">노랑</li>
							<li class="tag">초록</li>
							<li class="tag">파랑</li>
							<li class="tag">네이비</li>
							<li class="tag">보라</li>
							<li class="tag">화이트</li>
							<li class="tag">검정</li>
							<li class="tag">핑크</li>
							<li class="tag">빨간색</li>
							<li class="tag">노란색</li>
							<li class="tag">초록색</li>
							<li class="tag">파란색</li>
							<li class="tag">남색</li>
							<li class="tag">보라색</li>
							<li class="tag">하얀색</li>
							<li class="tag">검정색</li>
							<li class="tag">연두색</li>
							<li class="tag">하늘색</li>
							<li class="tag">분홍색</li>
							<li class="tag">밝은색</li>
							<li class="tag">어두우색</li>
							<li class="tag">빨강</li>
							<li class="tag">주황</li>
							<li class="tag">노랑</li>
							<li class="tag">초록</li>
							<li class="tag">파랑</li>
							<li class="tag">네이비</li>
							<li class="tag">보라</li>
							<li class="tag">화이트</li>
							<li class="tag">검정</li>
							<li class="tag">핑크</li>
							<li class="tag">빨간색</li>
							<li class="tag">노란색</li>
							<li class="tag">초록색</li>
							<li class="tag">파란색</li>
							<li class="tag">남색</li>
							<li class="tag">보라색</li>
							<li class="tag">하얀색</li>
							<li class="tag">검정색</li>
							<li class="tag">연두색</li>
							<li class="tag">하늘색</li>
							<li class="tag">분홍색</li>
							<li class="tag">밝은색</li>
							<li class="tag">어두우색</li>
						</ul>
					</div>
					
					<br>
					
					<div class="tagCate">테마별</div>
					<div class="tag_box">
						<ul>
							<li class="tag">결혼식</li>
							<li class="tag">레스토랑</li>
							<li class="tag">학교</li>
							<li class="tag">집들이</li>
							<li class="tag">친구집</li>
							<li class="tag">장례식</li>
							<li class="tag">상견례</li>
							<li class="tag">학원</li>
							<li class="tag">교회</li>
							<li class="tag">마트</li>
							<li class="tag">데이트</li>
							<li class="tag">외식</li>
							<li class="tag">소개팅</li>
							<li class="tag">면접</li>
							<li class="tag">일상</li>
							<li class="tag">여행</li>
							<li class="tag">돌잔치</li>
							<li class="tag">놀이공원</li>
							<li class="tag">서점</li>
							<li class="tag">도서관</li>
							<li class="tag">한강</li>
							<li class="tag">소풍</li>
							<li class="tag">피크닉</li>
							<li class="tag">결혼식</li>
							<li class="tag">레스토랑</li>
							<li class="tag">학교</li>
							<li class="tag">집들이</li>
							<li class="tag">친구집</li>
							<li class="tag">장례식</li>
							<li class="tag">상견례</li>
							<li class="tag">학원</li>
							<li class="tag">교회</li>
							<li class="tag">마트</li>
							<li class="tag">데이트</li>
							<li class="tag">외식</li>
							<li class="tag">소개팅</li>
							<li class="tag">면접</li>
							<li class="tag">일상</li>
							<li class="tag">여행</li>
							<li class="tag">돌잔치</li>
							<li class="tag">놀이공원</li>
							<li class="tag">서점</li>
							<li class="tag">도서관</li>
							<li class="tag">한강</li>
							<li class="tag">소풍</li>
							<li class="tag">피크닉</li>
						</ul>
					</div>
				</div>	
				<!-- /modal-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">태그선택</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- 위시리스트 추가 모달 -->
	<div class="modal fade" id="wishlistModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">위시리스트</h4>
				</div>
				<div class="modal-body">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/testimg.jpg">
					</div>
					
					<div class="form-group">
					    <label>코멘트</label>
					    <textarea class="commentForm" rows="4"></textarea>
				  </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">저장</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
	
	<script type="text/javascript">
	
		//태그단어들에 # 붙이기
		$(".tag_box ul li").prepend("#");
	
		//태그검색 버튼 눌렀을때 모달창 띄우기
		$("#btnTagSearch").on("click", function(){
			console.log("태그검색 모달창 호출");
			
			$("#tagSearchModal").modal();
		});
		
		//베스트드레서 이미지 클릭시 위시리스트창 모달 띄우기
		$("#codi_box").on("click", ".btnWishlist", function(){
			console.log("태그검색 모달창 호출");
			
			$("#wishlistModal").modal();
		});
		

	</script>

</html>

