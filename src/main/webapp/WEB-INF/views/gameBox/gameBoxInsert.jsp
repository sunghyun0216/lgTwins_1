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
<title>Insert title here</title>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX > 경기기록 입력 </h4>
	<form id="frm" action="./gameBoxInsert" method="post">
		<div class="form-group">
			<label for="team">팀명 :</label> 
			<input type="text" class="form-control myCheck" id="team" name="team">
		</div>
		
		<div class="form-group">
			<label for="score">스코어 :</label> 
			<input type="text" class="form-control myCheck" id="score" name="score">
		</div>
	
		<div class="form-group">
			<label for="place">장소 :</label> 
			<input type="text" class="form-control myCheck" id="place" name="place">
		</div>
		
		<div class="form-group">
			<label for="playDate">경기시간 :</label> 
			<input type="text" class="form-control myCheck" id="playDate" name="playDate">
		</div>
	
		<div class="form-group">
			<label for="playing">경기여부 :</label> 
			<input type="text" class="form-control myCheck" id="playing" name="playing">
		</div>
	
		<div class="form-group">
			<label for="wwl">승패 :</label> 
			<input type="text" class="form-control myCheck" id="wwl" name="wwl">
		</div>
	
		<input type="submit" id="btn" value="등록" class="btn btn-primary" >
		<input type="button" id="add" value="세부기록" class="btn btn-danger">
		
	</form>
</div>

<script type="text/javascript" src="../resources/js/gameBoxInsert.js"></script>
</body>
</html>