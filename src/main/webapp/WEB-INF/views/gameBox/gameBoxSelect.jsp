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

	<form action="./gameBoxSelect" method="post">
		 <input type ="hidden" name="orderNum" value=${dto.orderNum}>
	팀명 : ${dto.team} <input type ="hidden" name="team" value=${dto.team}><br>
	스코어 <input type ="text" name="score" value=${dto.score}><br>
	경기시간 <input type ="text" name="score" value=${dto.playDate}><br>
	경기여부 <input type ="text" name="score" value=${dto.playing}><br>
	승패 <input type ="text" name="score" value=${dto.wwl}><br>
	<button class="btn btn  btn-info"> Update </button>
	</form>		
이게 업데이트에서 보냐주 ㄴ여 기도 마찬가지로 서브밋없는데? 서브밋을 무조건 해야하는구나 안해도됨 그,거해줄경우
</body>
</html>