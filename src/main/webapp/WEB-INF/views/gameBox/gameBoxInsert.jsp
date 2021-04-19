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

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<title>Insert title here</title>
<style type="text/css">
	.r1{
		color: red;
	}
	
	.r2{
		color: blue;
	}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>


<div class="container">
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX > 경기기록 입력 </h4>
	<form id="frm" action="./gameBoxInsert" method="post">
		<div class="form-group">
			<label for="team">팀명 :</label> 
			<input type="text" class="form-control myCheck" id="team" name="team">
			<h5 id = "teamResult"></h5>
		</div>
		
		<div class="form-group">
			<label for="score">스코어 :</label> 
			<input type="number" class="form-control myCheck" id="score" name="score">
			<h5 id = "scoreResult"></h5>
		</div>
	
		<div class="form-group">
			<label for="place">장소 :</label> 
			<input type="text" class="form-control myCheck" id="place" name="place">
			<h5 id = "placeResult"></h5>
		</div>
		
		<div class="form-group">
			<label for="playDate">경기시간 :</label> 
			<input type="text" class="form-control myCheck" id="playDate" name="playDate">
			<h5 id = "playDateResult"></h5> <!-- 2021/04/08 -->
		</div>
	
		<div class="form-group">
			<label for="playing">경기여부 :</label> 
			<select id="playing" name="playing" size="1" >
				<option value="경기전" selected>경기전</option>
				<option value="경기중">경기중</option>
				<option value="경기종료">경기종료</option>
				<option value="경기취소">경기취소</option>	
			</select><br>
			<h5 id = "playingResult"></h5> <!-- 무조건 경기전 -->
		</div>
	
		<div class="form-group">
			<label for="wwl">승패 :</label> 
			<select id="wwl" name="wwl" size="1" >
				<option value="경기전" selected>-</option>
				<option value="승">승</option>
				<option value="패">패</option>
				<option value="무">무</option>	
			</select><br>
			<h5 id = "wwlResult"></h5> <!-- 시작전 -->
		</div>
	
		<input type="submit" id="btn" value="등록" class="btn btn-primary" >
		<input type="button" id="add" value="세부기록" class="btn btn-danger">
		
	</form>
</div>

<script type="text/javascript" src="../resources/js/gameBoxInsert.js"></script>

</body>
</html>