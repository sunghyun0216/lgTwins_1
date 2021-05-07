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
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
</head>
 <body>
   <body class="bg-light">
    <c:import url="../template/header.jsp"></c:import>
    
<div class="container">
  <main> 
  <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" alt="" width="72" height="57">
      <h2>Team Member Join Form</h2>
      <p class="lead">팀원 정보를 추가하기 위한 페이지 </p>
    </div>
    
    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">프로필 사진</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <div class="pro_profileArea" id="profileArea"></div>
              <img class="" src = "...">
            </div>
          </li>
        </ul>
        
       <!-- 자바스크립트 액션 걸기 -->
        <form class="card p-2">
          <div class="input-group">
          
            <input type="file" class="form-control" placeholder="imgSelect" action="">
          </div>
        </form>
      </div> <!-- end profile -->
      
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Insert Team Member Info</h4>
        
        <form class="needs-validation" action="./teamInsert" method="post" enctype="multipart/form-data">
          
          <div class="row g-3">
          
            <div class="col-sm-6">
              <label for="firstName" class="form-label">한글 이름</label>
              <input type="text" name ="tKName" class="form-control" id="firstName" placeholder="" value="" required>
              
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">영문 이름</label>
              <input type="text" name ="tEName"  class="form-control" id="lastName" placeholder="" value="">
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>
            <!-- 생년 월일 입력 -->
             <div class="col-sm-6">
              <label for="lastName" class="form-label">생년월일</label>
              <input type="date" name ="birth" class="form-control" id="lastName" placeholder="" value="">
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>
            
            <div class="col-sm-3">
              <label for="address" class="form-label">키</label>
              <input type="text" name ="height" class="form-control" id="address" placeholder="ex) 180cm -> 180" required>
              <div class="invalid-feedback">
                키를 입력해 주세요
              </div>
            </div>

            <div class="col-sm-3">
              <label for="address2" class="form-label">몸무게 </label>
              <input type="text" name ="weight" class="form-control" id="address2" placeholder="ex)80kg-> 80">
            </div>
          </div> <!-- bio 정보 끝 -->

          <hr class="my-4">
          
           <div class="my-3">
            <div class="form-check">
              <input id="coach" name="sort" type="radio" class="form-check-input" checked="true" value="1">
              <label class="form-check-label" for="credit">코치</label>
            </div>
            
            <div class="form-check">
              <input id="player" name="sort" type="radio" class="form-check-input" value="21">
              <label class="form-check-label" for="debit" >선수</label>
            </div>
          </div>
          
          <div class="col-md-5">
              <label for="country" class="form-label">소속</label>
              <select class="form-select" id="teamgroup" required>
                <optgroup label="팀 그룹 선택">
                <option value="1">1군</option>
                <option value="2">퓨처스</option>
                <option value="3">컨디셔닝</option>
                <option value="4">선수단</option>
                </optgroup>
              </select>
              
              <div class="invalid-feedback">
                소슥을 선택해 주세요
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">포지션(코치)</label>
              <select class="form-select" id="CPosition" >
                <optgroup label="코치 포지션 선택">
                <option value="1">감독</option>
                <option value="2">수석코치</option>
                <option value="3">타격코치</option>
                <option value="4">주루코치</option>
                <option value="5">수석코치</option>
                <option value="6">수석코치</option>
                <option value="7">수석코치</option>
                <option value="8">수석코치</option>
                <option value="9">수석코치</option>
                <option value="10">컨디셔닝 코치</option>
                </optgroup>
              </select>
              <div class="invalid-feedback">
                코치 포지션을 입력해 주세요
              </div>
              
            </div>
            
            <div class="col-md-4">
              <label for="state" class="form-label">포지션(선수)</label>
              <select class="form-select"  id="PPosition">
                <optgroup label="선수 포지션 선택">
                <option value="11">투수</option>
                <option value="12">포수</option>
                <option value="13">내야수</option>
                <option value="14">외야수</option>
                <option value="15">육성선수</option>
                </optgroup>
              </select>
              <div class="invalid-feedback">
               선수 포지션을 입력해 주세요
              </div>
            </div>
            
            <label class="form-check-label" for="h1">그룹 번호</label>
            <input type="text" id = "h1"name="tgNum"  readonly>
            <label class="form-check-label" for="h2">포지션 번호</label>
            <input type="text" id = "h2" name="tpNum" readonly>
            
            
            <h4 class="mb-3">사용손 선택</h4>
            <h5 class="mb-3">선수일 때만 활성화</h5>

          <div class="my-3" name ="inputusehand">
            <div class="form-check btn-group">
              <input id="uh1" name="useHand1" value="좌투" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="uh1">좌투</label>
            </div>
            
            <div class="form-check" >
              <input id="uh2" name="useHand1" value="우투"  type="radio" class="form-check-input" required>
              <label class="form-check-label" for="uh2">우투</label>
            </div>
            
            <div class="form-check">
              <input id="uh3" name="useHand2" value="좌타"  type="radio" class="form-check-input" checked >
              <label class="form-check-label" for="uh3">좌타</label>
            </div>
            <div class="form-check">
              <input id="uh4" name="useHand2" value="우타"  type="radio" class="form-check-input">
              <label class="form-check-label" for="uh4">우타</label>
            </div>
            <!--  -->
            <input type="text" id="usehand" name="usehand" readonly required>
          </div>
          
          <hr class="my-4">

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label"> 학력입력</label>
              <input type="text" name ="edu" class="form-control" id="cc-name" placeholder="초-중-고-대" >
            </div>
           </div> 
             <hr class="my-4">
          <input type="submit" id="btn" value="JOIN" class="btn btn-primary">
        </form>
      </div><!-- end form -->
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017–2021 LG TWINS</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>

    <!-- 유효성 검사하기 -->
   <script type="text/javascript" src="../resources/js/teamMemberCheck.js"></script>
   <script>
   $("#coach").click(function(event) { 
		checkBoxCP();
	});
	$("#player").click(function(event) { 
		checkBoxPP();
	});
	$("#teamgroup").change(function(event) { 
	  inputGroup();
	});

	$("#PPosition").change(function(event) { 
		inputPositionP();
	});
	$("#CPosition").change(function(event) { 
		inputPositionC();
	});
	$(".inputusehand").change(function(event) { 
		inputusehand();
	});

	function inputusehand(){
		var h1 = $("select[name=useHand1] option:selected").text();
	  var h2 = $("select[name=useHand2] option:selected").text();
	  var str = h1 + h2 ;
	  $("#usehand").attr('value', str);
	  $("#usehand").attr('text', str);
	}
	function inputGroup(){
		var str = $("#teamgroup option:selected").val();
	  $("#h1").attr('value', str);
	  $("#h1").attr('text', str);
	}
	function inputPositionP(){
		var str = $("#PPosition option:selected").val();
	  $("#h2").attr('value', str);
	  $("#h2").attr('text', str);
	}
	function inputPositionC(){
		var str = $("#CPosition option:selected").val();
	  $("#h2").attr('value', str);
	  $("#h2").attr('text', str);
	}
	function checkBoxCP(){
	  if($('input:radio[id=coach]').is(':checked')){
	        
	        $('#PPosition').attr('disabled', true);
	        $('#CPosition').attr('disabled', false);
	        
	        //선수단만  비활성화
	        //h2포지션 DB번호 넣기
	    }
	}
	function checkBoxPP(){
	  if($('input:radio[id=player]').is(':checked')){
	       	$('#PPosition').attr('disabled', false);
	        $('#CPosition').attr('disabled', true);
	        //선수단 자동 선택
	        $("#teamgroup").val("4").prop("selected", true);
	        
	        $("#h1").attr('value', 4);
	    }
	}
   </script>
  </body>
   
</html>