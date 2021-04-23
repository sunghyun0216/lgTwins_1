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
	<div class="teamInfo_header">
		<div class="team_group" id="teamInfoposi_nev">
		<a href = ""> 코칭 스태프</a> 
		<a href = ""> 선수단 </a>
		</div>
		
		
	</div>
	<div class="teamInfo_contents">
		<ul>
		<c:forEach var="roster" items=""> <!-- 호출하는 리스트  -->
			<li class="info_brick"><!-- javascript로 아이디 줄 것  -->	
			<a class="teamInfo_per" url="./teamPerInfo/${roster.tNum}">
				<div class="bg"></div> 
				<div class="likeComments"></div>
				<div class="info_text">
					<p class="back_number">${roster.backNum}</p>
					<h3 class="nameK"> ${roster.tKName}</h3>
					<p class="nameE">${roster.tEName}</p>
					<p class="position"> ${roster.tpName} . ${roster.usehand}</p>
				</div>
				<div class="img_wrap">
					<img src="">
				</div>
			</a>
			</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>