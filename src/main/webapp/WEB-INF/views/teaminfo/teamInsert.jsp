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
	<form action=" ./teaminfo/memberInsert" method="post" enctype="multipart/form-data">
  		<div class="col-lg-12">
  			<div class="form-row">
    		<div class="col">
    			<label class="my-1 mr-2 " for="NameK">이름(한)</label>
      			<input type="text" class="form-control mx-sm-3" name="tKName" id="NameK" placeholder="한글 이름" >
    		</div>
    		<div class="col">
    			<label class="my-1 mr-2 " for="NameE">이름(영)</label>
      			<input type="text" class="form-control mx-sm-3" id="tEName" placeholder="영문 이름">
    		</div>
    		<div class="input-group member_profile">
    			<div><img src="" ></div>
		 		<input type="file" class="form-control" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
			</div>
  			</div>
  		
  		<!-- 생년 월일 -->
  		<div class= "form-row">
  			<label class="my-1 mr-2 " for="birth">생년월일</label>
  			<input type="date" id="birth" name = "birth" value="<fmt:formatDate pattern = "yyyy-mm-dd"/>">
  		</div>
  		
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
  		 <div class="col">
    			<label class="my-1 mr-2 " for="weight">학력 입력</label>
      			<input type="text" class="form-control mx-sm-3" name="weight" id="weight" placeholder="초-중-고-대 로 입력">
    		</div>
    		
  		<div class="form-col">
  		<!--분류 체크  -->
  		<h4>그룹 선택 </h4>
  		<div class="btn-group col" role="group" aria-label="Basic radio toggle button group">
  			
  			<input type="radio" class="btn-check" name="btnradio" name="" value="2" id="btnradio1" autocomplete="off" checked>
  			<label class="btn btn-outline-primary" for="btnradio1">선수</label>

<!--  			<input type="radio" class="btn-check" name="btnradio" name="height" value="1" id="btnradio2" autocomplete="off"> -->
<!--   			<label class="btn btn-outline-primary" for="btnradio2">코치</label> -->
		
<!-- 			<!--소속 그룹체크  --> 
<!--   			<select class="custom-select my-1 mr-sm-2" name="tgNum" id="TeamGroup" > -->
<!--   			<option selected>그룹 선택</option> -->
<!--     		<option value="1">1군</option> -->
<!--     		<option value="2">퓨쳐스</option> -->
<!--     		<option value="3">컨디셔닝</option> -->
<!--     		<option value="4">선수단</option> 선수시 자동 체크 -->
<!--   			</select> -->
<!--     		 코치인 경우 -->
<!--     		 <select class="custom-select my-1 mr-sm-2" name="tpNum" id="PositionC"> -->
<!--   			<option selected >포지션 선택(선수)</option> -->
<!--     		<option value="1">감독</option> -->
<!--     		<option value="2">수석코치</option> -->
<!--     		<option value="3">투수코치</option> -->
<!--     		<option value="4">타격코치</option> -->
<!--     		<option value="5">수비코치</option> -->
<!--     		<option value="6">작전코치</option> -->
<!--     		<option value="7">주루코치</option> -->
<!--     		<option value="8">배터리코치</option> -->
<!--     		<option value="9">재활코치</option> -->
<!--     		<option value="10">컨디셔닝코치</option> -->
<!--   			</select> -->
			
    		 <!-- 선수인경우 -->
    		 <select class="custom-select my-1 mr-sm-2" name="tpNum" id="PositionP">
  			<option selected >포지션 선택(선수)</option>
    		<option value="11">투수</option>
    		<option value="12">포수</option>
    		<option value="13">내야수</option>
    		<option value="14">외야수</option>
    		<option value="15">육성선수</option>
  			</select>
  			
  			<!-- 사용 손 선택  -->
		<div class="col">
			<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				<input type="radio" class="btn-check" name="usehand" id = "hand1" value="좌투좌타" autocomplete="off" >
  				<label class="btn btn-outline-primary" for="hand1">좌투좌타 </label>
				<input type="radio" class="btn-check" name="usehand" id = "hand2" value="좌투우타" autocomplete="off" >
  				<label class="btn btn-outline-primary" for="hand2">좌투우타 </label>
				<input type="radio" class="btn-check" name="usehand" id = "hand3" value="우투좌타" autocomplete="off" >
  				<label class="btn btn-outline-primary" for="hand3">우투좌타 </label>
				<input type="radio" class="btn-check" name="usehand" id = "hand4" value="우투우타" autocomplete="off" >
  				<label class="btn btn-outline-primary" for="hand4">우투우타 </label>
			</div>
		</div>
		
    	</div>	
		
		</div>
		<!-- 프로필 사진 추가하기 사진 추가 시 배너 보이기 -->
		
		<!--  제출 버튼 1.유효성 검사하기 2. 통과하면 버튼이 활성화 된다.-->
		<div class="col-12">
    		<button type="submit" id="submitbtn" class="btn btn-primary" >추가하기</button>
  		</div>
  		</div>
	</form>
	
<!-- 	<!-- 임시 업로드 용--> 
<!-- 	<h2>tempFillUpload</h2> -->
<%-- 	<form action="${pageContext.request.contextPath}/uploadFormAction" method="post" enctype="multipart/form-data" > --%>
<!-- 	<input type = 'file' name="uploadFile" multiple> -->
<!-- 	<button> submit</button> -->
<!-- 	</form> -->
<!-- 유효성 검사 처리 -->
<script>
	
	//addCheckarray 전역 변수 생성, 모두 false
	//1. 모든 배열 값에서 논리 AND 연산하기 //1이 나오면 버튼 활성화
	//2. 입력시 유효값 관련 이벤트 실행, 유효하면 value 저장하고 false를 true로 저장하기 
	//name으로 전체 유효 체크 1. 함수실행하기
	//전체 체크 함수 실행
	//전체 체크 함수 
	
	var arrLit = [1, true, "JavaScript"]; 
		
	function checkAll(x, y) {
		var result ;
		for(){ //자기자신을 체크한다
			
		}
		if(){
			/
		}
		else {
			//아무 일도 안일어나요
		}
	}
</script>
</body>
</html>