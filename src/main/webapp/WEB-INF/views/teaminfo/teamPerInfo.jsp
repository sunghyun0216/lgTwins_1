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
	<div>
		<p><a href= "${pageContext.request.contextPath}/teaminfo/teamList"> &lt; 선수단 목록 </a>
	</div>
	<div class="player_info">
		<div class="player_private">
		<ul clss="player_info">
			<p id ="player_backnum">${biodto.backNum}</p>
			<li >${biodto.tpName}</li>
			<li>${biodto.usehand}</li>
			<li>${biodto.tKName}</li>
			<li>${biodto.birth}</li>
			<li>${biodto.height} ＊ ${biodto.weight}</li>
			<li>${biodto.edu}</li>
			<li>${biodto.joinyear}년 입단</li>
		</ul>
			<ul>	
			</ul>
		</div>
		<div class="player_photo">
			<img src="">
		</div>
		<div class="player_record_thisyear">
		</div>
		
		<!-- 선수 상세기록과 사진,경력, 연봉을 볼 수 있는 부분 radio 선택하기-->
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
	
	<c:import url="../teaminfo/recordDesk.jsp"></c:import>
</body>
</html>