<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>
<title>TeamInfo Page</title>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h2>teamInfo insert Page</h2>
	
	<!-- 선수 한글 이름, 영문 이름 ,등번호, 팀 선택, 포지션 선택, 사용손 -->
	<!-- 선수의 생년월일, 키 몸무게 초 중 고 대 학력 입력-->
		<h1>Team Join Page</h1>
		<form action="memberJoin" method="post">
		이름(한글) <input type="text" name="id"><br>
		
		영어 <input type="text" name="pw"><br>
		
		Name <input type="text" name="name"><br>
		Email <input type="text" name="email"><br>
		Phone <input type="text" name="phone"><br>
		
		<input type = "file" id="avartar"></input>
		<button>Join</button>
	</form>
</body>
</html>