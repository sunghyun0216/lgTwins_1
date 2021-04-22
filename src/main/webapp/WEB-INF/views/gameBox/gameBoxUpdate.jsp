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
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX > 경기결과 수정 </h4>
	<form id="frmUpdate" action="./gameBoxUpdate" method="post">
	
		<input type="hidden" name="orderNum" id="orderNum" value="${dto.orderNum}">
		<h4>${dto.team}</h4>
		<div class="form-group">
		<label for="playing">경기여부 :</label>
			<select id="playing" name="playing" size="1" >
				<option value="경기전" selected>경기전</option>
				<option value="경기중">경기중</option>
				<option value="경기종료">경기종료</option>
				<option value="경기취소">경기취소</option>	
			</select><br>
		</div>
		
		<div class="form-group">
			<label for="score">스코어 :</label> 
			<input type="number" id="score" name="score">
		</div>
		
		<div class="form-group">
			<label for="wwl">승패 : </label>
			<select id="wwl" name="wwl" size="1" >
				<option value="경기전" selected>-</option>
				<option value="승">승</option>
				<option value="패">패</option>
				<option value="무">무</option>	
			</select><br>
		</div>
		<input type="submit" id="btnUpdate" value="일반 기록 수정" class="btn btn-primary" >
		</form>		
		
		<a href="#" id="update2" class="btn btn-info">세부 기록 수정</a>
		<form action="./gameBoxUpdate2?orderNum=${dto.orderNum}" id="frmUpdate2" method="post">

		</form>
		
		<a href="#" id="delete" class="btn btn-danger">경기 기록 삭제</a>
		<form action="./gameBoxDelete?orderNum=${dto.orderNum}" id="frmDelete" method="post">
			<%-- <input type="hidden" name="orderNum" value="${dto.orderNum}"> --%>
			
		</form>
</div>

<script type="text/javascript" src="../resources/js/gameBoxUpdate.js"></script> 

</body>
</html>