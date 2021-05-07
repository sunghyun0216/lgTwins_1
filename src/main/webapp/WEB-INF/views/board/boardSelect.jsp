<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	
	<box>Twins ${board}</box>

	<h1>${dto.title}</h1>
	<h5>${dto.regDate}</h5>

	<h3>${dto.contents}</h3>
	
	<c:catch>
	<c:if test="${member.id eq 'admin'}">
	<a href="./${board}Update?num=${dto.num}" class="btn btn-danger">Update</a>
	<a href="#" id="del" class="btn btn-info">Delete</a>
	</c:if>
	</c:catch>

	
	<form action="./${board}Delete" id="frm" method="get">
		<input type="hidden" name="num" value="${dto.num}">
	</form>

	
	
</div>
<script type="text/javascript" src="../resources/jquery/comments.js"></script>
<script type="text/javascript">
		const del = document.getElementById("del");
		const frm = document.getElementById("frm");
	
		del.addEventListener("click", function(){
				let result = confirm("해당 페이지를 삭제하시겠습니까?");
		
				if(result){
					frm.setAttribute("method", "post");
					frm.submit();
				}
		});
</script>

</body>
</html>