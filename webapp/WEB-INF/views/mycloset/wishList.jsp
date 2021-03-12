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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/closet.css"> <!--리셋css-->
		
		
	</head>
	
	<body>
		<div id="wrap">
		    <!--header-->
		    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	
			<div id="container" class="clearfix">	
				<!-- side profile -->
				<c:import url="/WEB-INF/views/includes/sideProfileMenu.jsp"></c:import>
				
				<div id="main">
					<div id="main-top">
						<span id="closet-menu-title">위시리스트</span>
					</div>
					
					<div id="main-middle" class="clearfix">
						<c:forEach var="i" begin="0" end="15">
							<div id="wishImgBorder${i}" class="wishImgBox">
								<img class="closeBtn" src="${pageContext.request.contextPath}/assets/images/delete.jpg">
								<img>
							</div>
						</c:forEach>
						
					</div>
					
					<c:import url="/WEB-INF/views/includes/paging.jsp"></c:import>
				</div>
		    	
		    </div>
			
		    <!--footer-->
		    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</div> 
		
		<div class="modal fade" id="wishModal">
		  <div class="modal-dialog" style="width: 400px; top: 100px; left: 150px;">
		    <div class="modal-content">
		    	<div class="modal-body" style="">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <div id="wishImgModalDiv" style="margin: 30px auto 20px auto;">
			        	<img id="wishImgModal">
			        </div>
			      	<div style="margin-bottom: 20px; position: relative; left: 30px;">
			      		<span style="font-size: 15px; padding: 10px 20px; border-radius: 6px; background-color:#BFBFBF;color: white;">작성자</span>
			      		<span style="display:inline-block; margin-left:25px; font-size: 15px; font-weight: 900;">유재석</span>
			      	</div>
			      	
			      		
			      	<div class="clearfix" style="border: 1px solid black; border-radius: 10px; width: 300px; height: 120px; margin: 0px auto; padding: 2px; font-size: 15px;">
			      		<p style="float:left; font-size: 15px; padding: 10px 20px; border-radius: 6px; background-color:#BFBFBF;color: white; margin-right: 10px;">코멘트</p>
			  			<p id="wishComment" style="word-break:break-all;">
		    				sdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdfsdaflkjlaksdf
		      			</p>
		      		</div>			      	
		      	</div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/includes/sideMenu.js"></script>
	
	<script type="text/javascript">
	
	$(".wishImgBox").on("click",function(){
		$("#wishModal").modal();
	});
		
		
	</script>

</html>

