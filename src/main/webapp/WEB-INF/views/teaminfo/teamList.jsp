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
	<!-- 불러와야 하는 데이터 1: team DATA, position DATA -->
	<!-- 불러와야 하는 데이터 2: 선수단 List 혹은 Coach List DATA -->
		<div class="team_group" id="teamInfoposi_nev">
		<a href = ""> 코칭 스태프</a> <!-- 페이지 이동X -->
		<a href = ""> 선수단 </a> <!-- 페이지 이동 X -->
		</div>
		
		<div class="team_posi"> <!-- TeamPerInfo 페이지 이동 -->
		<a href = "${pageContext.request.contextPath}/teaminfo/teamList">투수</a> <!-- post 방식의 요청  -->
		<a href = "${pageContext.request.contextPath}/teaminfo/teamList">포수</a>
		<a href = "${pageContext.request.contextPath}/teaminfo/teamList">외야수</a>
		<a href = "${pageContext.request.contextPath}/teaminfo/teamList">내야수</a>
		<a href = "${pageContext.request.contextPath}/teaminfo/teamList">육성선수</a>
		</div>
	</div>
	<div class="team_p_Info_contents">
	<button class="seeOnlyAdmin" action="" >선추 추가하기  </button>
		<ul>
		<c:forEach items="${rosterdto}" var="rosterdto" > <!-- 호출하는 리스트  -->
			<li class="info_brick" id =""><!-- javascript로 아이디 줄 것  -->	
			<a id="teamInfo_per">
				<div class="bg"></div> 
				<div class="likeComments"></div>
				<div class="info_text">
					<h4 class="back_number">${rosterdto.backNum}</h4>
					<h3 class="nameK"> ${rosterdto.tKName}</h3>
					<p class="nameE">${rosterdto.tEName}</p>
					<p class="position"> ${rosterdto.tpName} . ${rosterdto.usehand}</p>
				</div>
				<div class="img_wrap" url="">
					<img src="">
				</div>
				
				<button class="seeOnlyAdmin" action="" >삭제하기 </button>
			</a>
			</li>
			</c:forEach>
		</ul>
	</div>
	
	<!-- 선수 등록페이지 이동 버튼  -->
	<div> 
	
	</div>
</body>
</html>