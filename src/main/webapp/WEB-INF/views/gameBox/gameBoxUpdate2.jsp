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
	
<div  class="container">
<h3 class="table"class="thead-dark"> 경기기록 > GAME BOX > 경기결과 수정 > 세부결과 수정</h3>
	<form id="frmUpdate2" action="./gameBoxUpdate2" method="post">
	<input type="hidden" name="orderNum" id="orderNum" value="${dto.orderNum}">
	
		<div class="form-group">
			<label for="score1"> 1회 :</label> 
			<input type="number" id="score1" name="score1" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score2"> 2회 :</label> 
			<input type="number" id="score2" name="score2" VALUE=0>
		</div>
	
		<div class="form-group">
			<label for="score3"> 3회 :</label> 
			<input type="number" id="score3" name="score3" VALUE=0>
		</div>
	
		<div class="form-group">
			<label for="score4"> 4회 :</label> 
			<input type="number" id="score4" name="score4" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score5"> 5회 :</label> 
			<input type="number" id="score5" name="score5" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score6"> 6회 :</label> 
			<input type="number" id="score6" name="score6" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score7"> 7회 :</label> 
			<input type="number" id="score7" name="score7" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score8"> 8회 :</label> 
			<input type="number" id="score8" name="score8" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="score9"> 9회 :</label> 
			<input type="number" id="score9" name="score9" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="runs"> RUNS :</label> 
			<input type="number" id="runs" name="runs" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="hits"> HITS :</label> 
			<input type="number" id="hits" name="hits" VALUE=0> 
		</div>
		
		<div class="form-group">
			<label for="errors"> ERRORS :</label> 
			<input type="number" id="errors" name="errors" VALUE=0>
		</div>
		
		<div class="form-group">
			<label for="balls"> BALLS :</label> 
			<input type="number" id="balls" name="balls" VALUE=0>
		</div>
		<input type="submit" id="btnUpdate" value="세부 기록 수정" class="btn btn-primary" >	
		</div>
	
	</form>
	
	<script type="text/javascript" src="../resources/js/gameBoxUpdate2.js"></script> 
</body>
</html>