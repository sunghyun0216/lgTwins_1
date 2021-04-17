<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
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
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX > 경기결과 수정 </h4>

	<form action="./gameBoxSelect" id="frm" method="post" items="${list}" var="dto">
		 <input type ="hidden" name="orderNum" value=${dto.orderNum}>
	팀명 : ${dto.team} <input type ="hidden" name="team" value=${dto.team}><br>
	스코어 <input type ="text" name="score" value=${dto.score}><br>
	경기시간 <input type ="text" name="score" value=${dto.playDate}><br>
	경기여부 <input type ="text" name="score" value=${dto.playing}><br>
	승패 <input type ="text" name="score" value=${dto.wwl}><br>
	<button id="btn" class="btn btn  btn-info"> Update </button>
	</form>		
	
<script type="text/javascript" src="../resources/js/gameBoxSelect.js"></script> 
</body>
</html>