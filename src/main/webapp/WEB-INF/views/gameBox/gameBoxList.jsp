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
		<div id="day"></div>	
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
				<td>${dto.place}</a></td>
				<td>${dto.playDate}</td>
				<td><a href="./gameBoxUpdate?orderNum=${dto.orderNum}">${dto.playing}</a></td>
				<td>${dto.wwl}</td>
			</tr>
		</c:forEach>

		</tbody>
	
	</table>
	</div>
	
</div>
<script type="text/javascript" src="../resources/js/calendar.js"></script>   

	<a href="./gameBoxInsert" class="btn  btn-info" role="button">경기기록 등록</a>

</body>
</html>