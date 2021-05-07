<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
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
	<div class="container mt-2">
	
		<h2 class="mt-4">회원가입</h2>

		<form id="frm" action="./memberJoin" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">아이디</label> 
				<input type="text" class="form-control"	id="id" name="id">
				<h4 id="idCheckResult"></h4>
				<h4 id="idResult"></h4>
			
				<!-- ID 는 6글자 이상 -->			
			</div>
			
			<div class="form-group">
				<label for="pw">패스워드</label>
				 <input type="password"	class="form-control" id="pw" name="pw1">
					<h4 id="pwResult"></h4>
					<!-- PW는 8글자 이상 -->
			</div>
			
			<div class="form-group">
				<label for="pw">패스워드 확인</label> 
				<input type="password" class="form-control" id="pw2" name="pw">
					<!-- PW 두개는 일치 -->
			</div>
			
			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control etc"	id="name" name="name">
				<!-- 비어 있으면 X -->
			</div>	
			
		
			<div class="form-group">
				<label for="phone">핸드폰</label> 
				<input type="text" class="form-control etc"	id="phone" name="phone">
				<!-- 비어 있으면 X -->
			</div>			
			
			<div class="form-group">
				<label for="email">이메일</label> 
				<input type="text" class="form-control etc"	id="email" name="email">
				<!-- 비어 있으면 X -->
			</div>
				
			<div class="form-group">
				<label for="avatar">사진등록</label> 
				<input type="file" class="form-control etc"	id="avatar" name="avatar">
			</div>	
				
						
			<input type="submit" id="btn" value="회원가입" class="btn btn-primary" >
			
		</form>
		
	</div>
 	<script type="text/javascript" src="../resources/js/memberJoin.js"></script>
</body>
</html>