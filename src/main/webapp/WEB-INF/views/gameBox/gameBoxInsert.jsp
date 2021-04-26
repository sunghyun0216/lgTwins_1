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

<title>Insert title here</title>
<style type="text/css">
.r1 {
	color: red;
}

.r2 {
	color: blue;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>


	<div class="container">
		<h4 class="table" class="thead-dark">경기기록 > GAME BOX > 경기기록 입력</h4>
		<form id="frm" action="./gameBoxInsert" method="post">
			<div class="form-group">
				<label for="team">팀명 :</label> <input type="text"
					class="form-control myCheck" id="team" name="team">
				<h5 id="teamResult"></h5>
			</div>

			<div class="form-group">
				<label for="score">스코어 :</label> <input type="number"
					class="form-control myCheck" id="score" name="score">
				<h5 id="scoreResult"></h5>
			</div>

			<div class="form-group">
				<label for="place">장소 :</label> <input type="text"
					class="form-control myCheck" id="place" name="place">
				<h5 id="placeResult"></h5>
			</div>

			<div class="form-group">
				<label for="playDate">경기날짜 :</label>
				<script>
					$(function() {
						$( "#datepicker1" ).datepicker({
						    dateFormat: 'yymmdd',
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
				<input type="text" id="datepicker1" name="playDate">
				<h5 id="playDateResult"></h5>	
			</div>
			
			<div class="form-group">
				<label for="playTime">경기시간 :</label> 
			<script>
				$(function() {
   					 $('.timepicker').timepicker();
							});
				</script>
				<input type="text" class="timepicker" id="timepicker" name="playTime">
				<h5 id="timeResult"></h5>
			</div>


			<div class="form-group">
				<label for="playing">경기여부 :</label> <select id="playing"
					name="playing" size="1">
					<option value="경기전" selected>경기전</option>
					<option value="경기중">경기중</option>
					<option value="경기종료">경기종료</option>
					<option value="경기취소">경기취소</option>
				</select><br>
				<h5 id="playingResult"></h5>
				<!-- 무조건 경기전 -->
			</div>

			<div class="form-group">
				<label for="wwl">승패 :</label> <select id="wwl" name="wwl" size="1">
					<option value="경기전" selected>-</option>
					<option value="승">승</option>
					<option value="패">패</option>
					<option value="무">무</option>
				</select><br>
				<h5 id="wwlResult"></h5>
				<!-- 시작전 -->
			</div>

			<input type="submit" id="btn" value="등록" class="btn btn-primary">
		</form>
		
		
	</div>

	<script type="text/javascript" src="../resources/js/gameBoxInsert.js"></script>

</body>
</html>