<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>


</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h2>LG TWINS</h2>
		<h2>로그인</h2>
	
		<form action="./memberLogin" method="post">
			<div class="form-group">
				<label for="id">ID</label> 
				<input type="text" class="form-control" id="id" name="id"
					aria-describedby="idlHelp"> 
					<small id="idlHelp" class="form-text text-muted">
					We'll never share your email with anyone else.
					</small>
			</div>
			<div class="form-group">
				<label for="pw">Password</label> <input
					type="password" class="form-control" id="pw" name="pw">
			</div>

			
			<a class="nav-link" href="${pageContext.request.contextPath}/member/memberJoinCheck">회원가입</a><td>
			
			<button type="submit" class="btn btn-primary">로그인</button>
		</form>
	</div>

</body>
</html>