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
	<form method="post" action="teaminfo/addTeamMember.do">
  		<div class="form-row">
    		<div class="col">
    			<label class="my-1 mr-2 " for="NameK">이름(한)</label>
      			<input type="text" class="form-control mx-sm-3" name="tKName" id="NameK" placeholder="한글 이름" >
    		</div>
    		<div class="col">
    			<label class="my-1 mr-2 " for="NameE">이름(영)</label>
      			<input type="text" class="form-control mx-sm-3" id="tEName" placeholder="영문 이름">
    		</div>
  		</div>
  		
  		<!-- 생년 월일 -->
  		
  		<!-- 키 몸무게  -->
  		<div class="form-row">
    		<div class="col">
    			<label class="my-1 mr-2 " for="height">키</label>
      			<input type="text" class="form-control mx-sm-3" name="height" id="height" placeholder="height">
    		</div>
    		<div class="col">
    			<label class="my-1 mr-2 " for="weight">몸무게</label>
      			<input type="text" class="form-control mx-sm-3" name="weight" id="weight" placeholder="weight">
    		</div>
  		</div>
  		<!-- 학력 입력 (초 중 고 )  -->
  		 
  		<div class="form-col">
  		<!--분류 체크  -->
  		<h4>그룹 선택 </h4>
  		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  			
  			<input type="radio" class="btn-check" name="btnradio" name="height" value="1" id="btnradio1" autocomplete="off" checked>
  			<label class="btn btn-outline-primary" for="btnradio1">선수</label>

 			<input type="radio" class="btn-check" name="btnradio" name="height" value="2" id="btnradio2" autocomplete="off">
  			<label class="btn btn-outline-primary" for="btnradio2">코치</label>
		</div>
		<!--소속 그룹체크  -->
  			<select class="custom-select my-1 mr-sm-2" name="tgNum" id="TeamGroup" >
  			<option selected>그룹 선택</option>
    		<option value="1">1군</option>
    		<option value="2">퓨쳐스</option>
    		<option value="3">컨디셔닝</option>
    		<option value="4">선수단</option>
  			</select>
    		 
    		 <!-- 선수인경우 -->
    		 <select class="custom-select my-1 mr-sm-2" name="tpNum" id="TeamPosition">
  			<option selected >포지션 선택(선수)</option>
    		<option value="11">투수</option>
    		<option value="12">포수</option>
    		<option value="13">내야수</option>
    		<option value="14">외야수</option>
    		<option value="15">육성선수</option>
  			</select>
    		 <!-- 코치인 경우 -->
    		
  		</div>
		<!-- 사용 손 선택  -->
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  			<input type="radio" class="btn-check" name="usehand" value="좌투" id="lefttar" autocomplete="off" >
  			<label class="btn btn-outline-primary" for="lefttar">좌투 </label>

  			<input type="radio" class="btn-check" name="usehand" value="우투" id="righttar" autocomplete="off" checked>
  			<label class="btn btn-outline-primary" for="righttar">우투</label>
		</div>
		<span></span>
		 <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  			<input type="radio" class="btn-check" name="usehand" value="좌타" id="left2" autocomplete="off" checked>
  			<label class="btn btn-outline-primary" for="left2" >좌타 </label>

  			<input type="radio" class="btn-check" name="usehand" value="우타" id="right2" autocomplete="off">
  			<label class="btn btn-outline-primary" for="right2">우타</label>
		</div>
		<!-- 프로필 사진 추가하기 사진 추가 시 배너 보이기 -->
		 <div class="input-group">
  		
  		<input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
  		
  		<button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Button</button>
		</div>
		<!--  제출 버튼 1.유효성 검사하기 2. 통과하면 버튼이 활성화 된다.-->
		<div class="col-12">
    		<button type="submit" class="btn btn-primary">추가하기</button>
  		</div>
	</form>

</body>
</html>