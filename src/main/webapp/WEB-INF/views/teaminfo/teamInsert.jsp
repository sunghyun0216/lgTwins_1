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
	<!-- 삽입 혹은 삭제 수행을 한다 -->
	<h2>team Join Page</h2>
	
	<!-- 선수 한글 이름, 영문 이름 ,등번호, 팀 선택, 포지션 선택, 사용손 -->
	<!-- 선수의 생년월일, 키 몸무게 초 중 고 대 학력 입력-->
		
		<form action="memberJoin" method="post">
		이름(한)<input type="text" name="id"><br>
		이름(영)<input type="text" name="pw"><br>
		
		등번호 <input type="text" name="name"><br> <!-- 드롭다운 선택,  -->
		소속<input type="text" name="email"><br> <!-- 드룹다운 선택 -->
		포지션<input type="text" name="phone"><br><!-- 드롭다운 선택 -->
		사용손<input type="text" name="phone"><br> <!-- 드롭다운 선택 -->
		
		키 <input type="text" name="id"><br>
		몸무게 <input type="text" name="id"><br>
		
		학력<br>
		초<input type="text" name="id"><br>
		중<input type="text" name="id"><br>
		고<input type="text" name="id"><br>
		대<input type="text" name="id"><br> 
		
		
		<!-- 1. 자동으로 키 생성, 가입 년도는 알아서 올해로 입력시킨다. -->
		<button>팀원 등록</button>
	</form>
	<!-- 유효성 검사하는 javaScript 실행 할 것 -->
</body>
</html>