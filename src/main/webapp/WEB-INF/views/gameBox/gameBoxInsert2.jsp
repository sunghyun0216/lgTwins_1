<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h4 class="table" class="thead-dark">경기기록 > GAME BOX > 경기기록 입력 >> gameBox 입력</h4>
		<form id="frm" action="./gameBoxInsert2" method="post">
			
			<div class="form-group">
				<label for="team"> 1회 :</label> <select id="one" name="one" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 2회 :</label> <select id="two" name="two" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 3회 :</label> <select id="three" name="three" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 4회 :</label> <select id="four" name="four" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>

			<div class="form-group">
				<label for="team"> 5회 :</label> <select id="five" name="five" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 6회 :</label> <select id="six" name="six" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 7회 :</label> <select id="seven" name="seven" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>

			<div class="form-group">
				<label for="team"> 8회 :</label> <select id="eight" name="eight" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> 9회 :</label> <select id="nine" name="nine" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> RUNS :</label> <select id="runs" name="runs" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> HITS :</label> <select id="hits" name="hits" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> ERRORS :</label> <select id="errors" name="errors" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="team"> BALLS :</label> <select id="balls" name="balls" size="1">
					<option value="0" selected>-</option>
				</select>
			</div>
			
			<input type="submit" id="btn" value="등록" class="btn btn-primary">
		</form>
	</div>

<script type="text/javascript" src="../resources/js/gameBoxInsert2.js"></script>
</body>
