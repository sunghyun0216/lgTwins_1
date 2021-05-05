<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>
<title>TeamInfo Page</title>

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script>
	$(function() {
		$("#photo_list").on("click", function() {
			$.ajax("/t2/teaminfo/AllplayerList") //ajax통신은 같은 컨트롤러에서 가능하다.
			.done(function() {
				alert("요청 성공");
			})
			.fail(function() {
				alert("요청 실패");
			})
			.always(function() {
				alert("요청 완료");
			});
		});
	});
</script >

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div>
		<p><a href= "${pageContext.request.contextPath}/teaminfo/AllplayerList"> &lt; 선수단 목록 </a>
	</div>
	
	<div class="container">
  		<div class="row">
    		<div class="col">
      			<div class="card" style="width: 18rem;">
  			<div class="card-body">
    		<span class="card-text">${playerInfo.backNum}</span>
    		<span class="card-text">${playerInfo.tpName}</span>
    		<span class="card-title">${playerInfo.usehand}</span>
    		<h4> </h4>
    		<h3 class="card-subtitle mb-2 text-muted">${playerInfo.tKName}</h3>
    		
    		<p class="card-text">${playerInfo.birth} ＊ ${playerInfo.height}cm * ${playerInfo.weight}kg</p>
   		 	<p class="card-text">${playerInfo.edu}</p>
   		 	<p class="card-text">${playerInfo.joinyear} 입단</p>
  		</div>
		</div>
    		</div>
    		<div class="col">
     			<div class="text-center">
					<img src="..." class="rounded" alt="..." size="">
				</div>
    		</div>
    		<div class="col">
    		<div class="card" style="width: 18rem;">
    			<div class="card-body">
      				<h5>이곳에 선수경기 성적이 <br> 들어갔다고 가정</h5 >
  				</div>
    		</div>	
    		</div>
  		</div>
	</div> <!-- 선수 정보 끝 -->
	<br><br>
	<div class="detail_header border-bottom">
		<!-- 선수 상세기록과 사진,경력, 연봉을 볼 수 있는 부분 radio 선택하기-->
		<h2>${playerInfo.tNum}</h2>
		<div class="container">
  			<div class="row">
    			<div class="col-sm-8">
    				<a id="photo_list" class="btn btn-primary btn-lg active"  role="button" aria-pressed="true">포토</a>
					<a id="career_list" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">이력</a>
					<a id="pay_list" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">연봉</a>	
    			</div>
    			<div class="col-sm-4">
    				<a href="#" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">팬  ${playerInfo.likeNum} </a>
    				<a href="#" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">카카오스토리 공유</a>
    			</div>
  			</div>
  		</div>
	</div><!-- end header -->
	
	<div class="col" id="info_detail" >	
		<h2>Ajax로 요청하는 정보만  가져올것</h2>
	</div>
</body>
</html>