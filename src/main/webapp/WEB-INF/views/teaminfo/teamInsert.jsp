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
	<!-- 삽입이나 갱신을 한다 -->
	<h2>team ${pageName}Page</h2>
	
	<form>
		<!-- 한글이름입력, -->
		 
		<div class="input-group mb-3">
			<label for="validationServer01" class="form-label">이름</label>
  			<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
		</div>
		<!-- 영문 이름 번역 입력창에 띄는 순간 (자동)실행된다. -->
		<div class="input-group mb-3">
			<label for="validationServer01" class="form-label">이름</label>
  			<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
		</div>
		<!-- 생년 월일 입력 (선택 폼) -->
			
		<!-- 프로필 사진 등록, 사진 보이기  -->
		<div class="mb-3">
		<label for="validationServer01" class="form-label">프로필 사진</label>
   		<input type="file" class="form-control" aria-label="file example" required>
  		</div>
		<!-- 등번호 입력(이미 있는 빨간 경고창 )-->
		
		<!-- 소속 라디오 선택(선수냐 코치냐 선택) -->
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  			<label for="validationServer01" class="form-label">소속 선택</label>
  			<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
 		 	<label class="btn btn-outline-primary" for="btnradio1">코치스태프</label>

 		 	<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  			<label class="btn btn-outline-primary" for="btnradio2">선수</label>
		</div>
		<!-- 세부 소속단 선택, 선수인 경우 자동 선수단이 된다. -->
		<div>
		<select class="form-select" aria-label="소속 선택">
		<label for="validationServer01" class="form-label">소속단 선택</label>
		<option selected>소속 선택</option>
  		<option value="1">One</option>
  		<option value="2">Two</option>
  		<option value="3">Three</option>
  		</select>
  		</div>
		<!-- 포지션 선택  (코치ㅡ선수 여부에 따라서 다른 선택이 나온다)-->
		<!-- 선수단인 경우 -->
		<select class="form-select" aria-label="Default select example"  >
  		<option selected>포지션 선택</option>
  		<option value="11">투수</option>
  		<option value="12">포수</option>
  		<option value="13">외야수</option>
  		<option value="14">내야수</option>
  		<option value="15">육성선수</option>
		</select>
		<!-- 코치스태프인 경우 -->
		<select class="form-select" aria-label="Default select example" disabled>
  		<option selected>위치 선택</option>
  		<option value="1">감독</option>
  		<option value="2">투수코치</option>
  		<option value="4">타격코치</option>
  		<option value="5">수비코치</option>
  		<option value="6">작전코치</option>
  		<option value="8">주루코치</option>
  		<option value="9">배터리코치</option>
  		<option value="10">트레이닝코치</option>
		</select>
		
		<!-- 사용손 체크 두 부분 체크  (코치인 경우 비활성화 ,자동으로 '해당없음' 이 입력 된다)-->
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  		<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off">
  		<label class="btn btn-outline-primary" for="btnradio1">좌투</label>

 		<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  		<label class="btn btn-outline-primary" for="btnradio2">우투</label>
		</div>
		
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
  		<input type="radio" class="btn-check2" name="btnradio" id="btnradio3" autocomplete="off">
  		<label class="btn btn-outline-primary" for="btnradio1">좌타</label>

 		<input type="radio" class="btn-check2" name="btnradio" id="btnradio4" autocomplete="off">
  		<label class="btn btn-outline-primary" for="btnradio2">우타</label>
		</div>
		<!-- 신장 넣기(정수) -->
		<h4>신장</h4>
		<div class="form-floating mb-3">
  		<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  		<label for="floatingInput">신장</label>
		</div>
		<!-- 몸무게 넣기 (정수)-->
		<h4>몸무게</h4>
		<div class="form-floating mb-3">
 	 	<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  		<label for="floatingInput">몸무게</label>
		</div>
		<!-- 학력 넣기(초중고대 검색해서 넣을 것) -->
		
		<!-- 삽입 혹은 수정 제출 버튼  -->
		<button class="btn btn-primary" type="submit">${pageName}</button>
		<input class="btn btn-primary" type="submit" value="Submit">Submit
		<input class="btn btn-primary" type="reset" value="Reset">Reset
	</form>
		
</body>
</html>