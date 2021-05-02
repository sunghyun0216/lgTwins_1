<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head> 
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.css">
<script src='//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.js'></script>
<title>Home</title>

<link rel="stylesheet" href="../resources/css/calendar.css">

<script>
			$(function() {
				  $( "#datepicker2" ).datepicker({
				    dateFormat: 'yy년 mm월 dd일',
				    prevText: '이전 달',
				    nextText: '다음 달',
				    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				    dayNames: ['일','월','화','수','목','금','토'],
				    dayNamesShort: ['일','월','화','수','목','금','토'],
				    dayNamesMin: ['일','월','화','수','목','금','토'],
				    showMonthAfterYear: true,
				    changeMonth: true,
				    changeYear: true,
				    yearSuffix: '년'
				  });
			});
</script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX </h4>

<form name="frm" method="get" action="./gameBoxList">
<!-- 옆에 버튼을 만들어서 날짜값을 셋팅후 버튼을 누르면 컨트롤러로 그 값을 보낸다. -->

<div class="totalbox">
	<div class="upper">
		<input type="text" id="datepicker2" class="go-today" style="width: 160px; text-align: center;">
		<input type="submit" class="btn btn-primary" id="kiki" style="width: 70px; text-align: center;" value="이동">
		<input type="hidden" id="playDate" name="playDate">
		
		<input type="hidden" id="dateDate" name="dateDate" value="${date}">
		
<!-- 		<button class="btn btn-primary" id="kiki">이동</button> -->
	</div>
</div>

</form> 

	<div class="lower">
	
			<table class="table">
		<thead class="thead-dark">  
			<tr>
				<th>zz</th>
				<th>팀명</th>
				<th>스코어</th>
				<th>장소</th>
				<th>경기시간</th>
				<th>경기여부</th>
				<th>승패</th>
				
			</tr>
		</thead>
		
		<tbody>	
		<c:forEach items="${list}" var="dto">
			<tr>
				<td><img width=50px height=50px src= ${dto.logo}></td>
				<td>${dto.team}</td>
				<td>${dto.score}</td>
				<td>${dto.place}</td>
				<td>${dto.playTime}</td>
				<td><a href="./gameBoxUpdate?orderNum=${dto.orderNum}">${dto.playing}</a></td>
				<td>${dto.wwl}</td>
			</tr>
		</c:forEach>

		</tbody>
	
	</table>
	</div>

</div>
	
<c:forEach items="${list}" var="dto">
	<c:if test="${dto.playing eq '경기종료' or dto.playing eq '경기중'}">
	
	<table>
			<thead>  
				<tr>
					<th>1</th>
					<th>2</th>
					<th>3</th>
					<th>4</th>
					<th>5</th>
					<th>6</th>
					<th>7</th>
					<th>8</th>
					<th>9</th>
					<th>R</th>
					<th>H</th>
					<th>E</th>
					<th>B</th>
				</tr>
			</thead>
			
			<tbody>	
				
				<tr>
					<td>${dto.score1}</td>
					<td>${dto.score2}</td>
					<td>${dto.score3}</td>
					<td>${dto.score4}</td>
					<td>${dto.score5}</td>
					<td>${dto.score6}</td>
					<td>${dto.score7}</td>
					<td>${dto.score8}</td>
					<td>${dto.score9}</td>
					<td>${dto.runs}</td>
					<td>${dto.hits}</td>
					<td>${dto.mistake}</td>
					<td>${dto.balls}</td>
				</tr> 
				
			</tbody>
	</table>
	</c:if>
</c:forEach>

<script type="text/javascript" src="../resources/js/calendar.js"></script>   

<a href="./gameBoxInsert" class="btn btn-info" role="button">경기일정 등록</a>

</body>
</html>