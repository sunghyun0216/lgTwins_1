<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="./template/bootStrap.jsp"></c:import>

<title>TeamInfo Page</title>

</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	<div class="teamInfo_header">
	<!-- 불러와야 하는 데이터 1: team DATA, position DATA -->
	<!-- 불러와야 하는 데이터 2: 선수단 List 혹은 Coach List DATA -->
		<div class="team_group" id="teamInfoposi_nev">
		<a href = ""> 코칭 스태프</a> <!-- 페이지 이동X -->
		<a href = ""> 선수단 </a> <!-- 페이지 이동 X -->
		</div>
		
		<div class="team_posi"> <!-- TeamPerInfo 페이지 이동 -->
		<a href = "teamList?posiNum=11">투수</a> <!-- post 방식의 요청  -->
		<a href = "teamList?posiNum=12">포수</a>
		<a href = "teamList?posiNum=13">외야수</a>
		<a href = "teamList?posiNum=14">내야수</a>
		<a href = "teamList?posiNum=15">육성선수</a>
		</div>
		
	</div>
	<div class="teamInfo_contents">
		<ul>
		<c:forEach items="${roster}" var="" > <!-- 호출하는 리스트  -->
			<li class="info_brick" id =""><!-- javascript로 아이디 줄 것  -->	
			<a id="teamInfo_per">
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