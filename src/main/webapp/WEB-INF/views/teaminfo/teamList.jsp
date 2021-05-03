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

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1> TEAM INFO List PAGE</h1>
	<div class="teamInfo_header">
		<p> 팀 > ${sortName} 
		
		<div class="team_group" id="teamInfoposi_nev">
				<a href = "#">  코칭 스태프 </a>
				<a href = "${pageContext.request.contextPath}/teaminfo/AllplayerList">  ${sortName} </a> <!-- 페이지 이동 X -->
			<span>
				<a href = "${pageContext.request.contextPath}/teaminfo/AllplayerList">전체</a>
				
				<a href = "${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'11'}">투수</a>
				<a href = "${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'12'}">포수</a>
				<a href = "${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'13'}">내야수</a>
				<a href = "${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'14'}">외야수</a>
				<a href = "${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'15'}">육성선수</a>
			</span>
		</div>
		
	</div>
	
	<div class="team_player_list row ">
		<c:forEach items="${playerdto}" var="playerdto">
			<div><!-- 여기에 관리자 로그인시에만, 삭제 수정 버튼 생성하기 --></div>
			<div class="card " style="width: 18rem;">
				<!-- 팀원 개인 조회  -->
				<a  href="${pageContext.request.contextPath}/teaminfo/teamPerInfo/?tNum=${playerdto.tNum}">
					<img src="" class="card-img-top" alt="...">
					<div class="card-body">
					<h4 class="card-title">${playerdto.backNum}</h4>
					<h3>  ${playerdto.tKName}</h3>
					<h5>  ${playerdto.tEName}</h5>
					<p class="position"> ${playerdto.tpName} . ${playerdto.usehand}</p>
					</div>
				</a>
			</div>
		</c:forEach>
	</div> <!-- end cardBox -->
</body>
</html>