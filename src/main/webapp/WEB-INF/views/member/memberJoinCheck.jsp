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

<a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="https://www.lgtwins.com/images/twins_logoB.png" alt="My Image" width="150" height="100"></a>

<div class="container">
	<h1>약관 동의</h1>
	
	
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input" id="all" value="">전체동의
  		</label>
	</div>
	
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h1>LG스포츠 통합회원 이용약관</h1>
  		<p>▶제1조 목적
이 약관은 LG스포츠 주식회사(이하 "회사")가 제공하는 LG스포츠 통합회원 계정을 이용함에 있어서 회사와 회원 간의 권리와 의무, 하나의 ID 및 Password로 통합하여 회사의 서비스를 이용하는데 따른 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다.</p>
	</div>
		<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h1>LG트윈스 이용약관</h1>
  		<p>▶제 1 장 총칙
	▷제 1조 (목적)
	이 약관은 서울 LG트윈스(이하 "구단"이라 합니다) 이 제공하는 모든 서비스(이하 "서비스"라 한다)의 이용 조건 및 절차에 관한 기본적인 사항에 대해 정의하는 것을 목적으로 합니다.</p>
	</div>
	
	<div class="form-check">
 		<label class="form-check-label">
   		<input type="checkbox" class="form-check-input check" value="">동의
  		</label>
	</div>
	
	<div class="jumbotron">
  		<h1>개인정보 수집 및 이용 동의</h1>
  		<p>
1. 개인정보 수집 항목


회사는 다음 각호의 개인정보를 회원가입 유형에 따라 수집하고 있습니다.



[본인확인(휴대폰)]


- 필수항목 : 이름, 휴대폰번호, 생년월일, 성별, 가입통신사, 본인확인정보(CI/DI), 내/외국인여부



[본인확인(I-PIN)]


- 필수항목 : 이름, 생년월일, 성별, 본인확인정보(CI/DI)



[만 14세 이상 회원]


- 필수정보 : 아이디, 비밀번호, 연락처, 이름, 생년월일, 성별, E-mail
- 선택정보 : 주소, SMS수신 여부, 메일수신 여부, 페이스북 계정, 카카오 계정, 프로필 사진



[만 14세 미만 회원]


- 필수정보 : 아이디, 비밀번호, 연락처, 이름, 생년월일, 성별, E-mail, 보호자 이름, 보호자 연락처
- 선택정보 : 주소, SMS수신 여부, 메일수신 여부, 페이스북 계정, 카카오 계정, 프로필 사진, 보호자 ID



# 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

위 정보는 수집 당시 정보뿐만 아니라 정보 수정으로 변경된 정보를 포함합니다.




2. 개인정보의 처리(수집 및 이용) 목적


회사는 다음과 같은 목적을 위하여 개인정보를 수집하고 있습니다.


회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달




3. 개인정보의 보유기간


이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.
(LG스포츠 통합회원 탈퇴 시 즉시 파기)




4. 개인정보 수집 동의를 거부할 권리


이용자는 수집하는 개인정보에 대해 동의를 거부할 권리가 있으며, 동의 거부 시에는 회원가입이 제한됩니다.
(선택정보는 입력하지 않아도 회원가입이 가능합니다.)</p>
	</div>
	
	
	
	<button class="btn btn-danger" id="btn">JOIN</button>
<script type="text/javascript" src="../resources/js/memberJoinCheck.js"></script>
</div>
</body>
</html>