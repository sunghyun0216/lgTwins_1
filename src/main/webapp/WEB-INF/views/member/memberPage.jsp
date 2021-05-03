<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보</h1>
	<h3>아이디: ${member.id}</h3>
	<h3>이름: ${member.name}</h3>
	<h3>핸드폰: ${member.phone}</h3>
	<h3>이메일: ${member.email}</h3>
	<h3><img alt="" src="../resources/uploadmember/${member.memberFileDTO.fileName}"></h3>

	<a href="./memberUpdate">수정</a>
	<a href="./memberDelete">탈퇴</a>
	
</body>
</html>