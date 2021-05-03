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
<title>Title</title>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<!-- 삽입이나 갱신을 한다 -->
	<h2>team ${pageName}Page</h2>
	<form>
  		<div class="form-row">
    		<div class="col">
      			<input type="text" class="form-control mx-sm-3" placeholder="한글 이름">
    		</div>
    		<div class="col">
      			<input type="text" class="form-control mx-sm-3" placeholder="영문 이름">
    		</div>
  		</div>
  		
  		<!--분류 체크  -->
  		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  			<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
  			<label class="btn btn-outline-primary" for="btnradio1">선수</label>

 			<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  			<label class="btn btn-outline-primary" for="btnradio2">코치</label>
		</div>
		<!--소속 그룹체크  -->
		<div class="form-row">
  			<label class="my-1 mr-2 " for="TeamGroup">소속 그룹</label>
  			<select class="custom-select my-1 mr-sm-2" id="TeamGroup">
  			
  			<option selected>그룹 선택</option>
    		<option value="1">1군</option>
    		<option value="2">퓨쳐스</option>
    		<option value="3">컨디셔닝</option>
    		<option value="4">선수단</option>
  			</select>
    		
    		 <!-- 포지션 선택 -->
  		</div>
		
		 
		 
	</form>
	

</body>
</html>