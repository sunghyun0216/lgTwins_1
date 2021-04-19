<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>
<title>Home</title>

<link rel="stylesheet" href="../resources/css/calendar.css">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX </h4>


<div class="totalbox">
	<div class="upper">
		 <button class="nav-btn go-prev">&lt;</button>
		 <div id="day"> 
		 <button class="nav-btn go-today">Today</button>
		 <button class="nav-btn go-next">&gt;</button>
		 </div>
	</div>

	<div class="lower">
	
			<table class="table">
		<thead class="thead-dark">  
			<tr>
				<th>순서</th>
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
				<td>${dto.orderNum}</td>
				<td>${dto.team}</td>
				<td>${dto.score}</td>
				<td>${dto.place}</td>
				<td>${dto.playDate}</td>
				<td><a href="./gameBoxUpdate?orderNum=${dto.orderNum}">${dto.playing}</a></td>
				<td>${dto.wwl}</td>
			</tr>
		</c:forEach>

		</tbody>
	
	</table>
	</div>

</div>

<div>

</div>	

<table class="table">
		<thead class>  
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
			<c:forEach items="${list2}" var="dto">
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
			</c:forEach>
		</tbody>
		
</table>
<script type="text/javascript" src="../resources/js/calendar.js"></script>   

	<a href="./gameBoxInsert" class="btn  btn-info" role="button">경기일정 등록</a>

</body>
</html>