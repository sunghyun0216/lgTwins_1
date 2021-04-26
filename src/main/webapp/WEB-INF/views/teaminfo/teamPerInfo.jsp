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
	
	<div class="player_info">
		<div class="player_private">
		<ul>
			<p id ="player_backNum">${memberBio.backNum}</p>
			<li>${memberBio.posiName}</li>
			<li>${memberBio.usehand}</li>
			<li>${memberBio.tKName}</li>
			<li>${memberBio.birth}</li>
			<li>${memberBio.height} ＊ ${memberBio.weigth}</li>
			<li>${memberBio.edu}</li>
			<li>${memberBio.edu}년 입단</li>
		</ul>
			<ul>	
			</ul>
		</div>
		<div class="player_photo">
			<img src="">
		</div>
		<div class="player_record_thisyear">
		</div>
		
		<!-- 선수 상세기록과 사진,경력, 연봉을 볼 수 있는 부분 -->
		<div class="record_desk">
			<div class="player_record">
				<div>
					<h3>최근 경기기록</h3>
					<!-- 상세보기 버튼 만들기 -->
				</div>
				<div>
					<h3> 시즌별 경기기록</h3>
				</div>
			</div>
			<div class="player_photoes">
			<!-- 사진추가 버튼 생성하기 -->
			</div>
			<div class="player_career">
			<!-- 이력추가 버튼 만들기 -->
			</div>
			<div class="player_salary">
			<!-- 정보 추가 버튼 만들기 -->
			</div>
		</div>
	</div>
</body>
</html>