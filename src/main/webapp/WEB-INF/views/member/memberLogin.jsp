<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

<a class="navbar-brand" href="${pageContext.request.contextPath}/">Logo</a>
</head>
<body>
	<div class="container">
	<div class="row">
    	<div class="container" id="formContainer">

          <form action="./memberLogin" method="post">
		<h2>LG TWINS</h2>
		<h2>로그인</h2>
            <a href="#" id="flipToRecover" class="flipLink">
              <div id="triangle-topright"></div> 
            </a>
            <input type="text" class="form-control" id="id" name="id"
					aria-describedby="idlHelp" placeholder="ID" required autofocus>
            <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호" required>
            
            
            <button class="btn btn-lg btn-danger btn-block" type="submit">로그인</button>
          </form>
    
    
    
    
    	<br>
    	    	<br>
    	    	    	<br>
    	    	    	    	<br>
    	<a href="./memberJoin" class="btn btn-danger">회원가입</a>
    	
    
    
        </div> 
	</div>
</div>
	
	

</body>
</html>