<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<h1>Info Manage Page</h1>
	<span>선수들의 정보(선수추가, 사진 추가, 이력 , 경력내용)를 관리하는 페이지(관리자 전용 페이지)</span>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  	<div class="container-fluid">
   		<a class="navbar-brand" href="#">항목</a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
    	
    	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      	<div class="navbar-nav">
        	<a class="nav-link active" aria-current="page" href="#">Home</a>
        	<a class="nav-link" href="#">팀관리</a>
        	<a class="nav-link" href="#">사진관리</a>
        	<a class="nav-link" href="#">이력관리</a>
        	<a class="nav-link" href="#">연봉관리</a>
      	</div>
    	</div>
  	</div>
	</nav>
	<!-- 여기서는 nav 누르면 javaScript로 불러와요 -->
	<div class="info_manage_desk">
		<!-- 여기에 내용 넣기 -->
	</div>
</body>
</html>