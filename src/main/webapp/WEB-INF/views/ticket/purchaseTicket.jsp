<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<link href="../resources/css/tabMenu.css" rel="stylesheet" type="text/css">

<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />


</head>
<body>
<div class="container">
  <ul class="tab_title">
    <li class="on">tab1</li>
    <li>tab2</li>
    <li>tab3</li>
  </ul>
  <div class="tab_cont">
  	<!-- 티켓정보 확인창 -->
    <div class="on">
    <h3>팀${dto.teamName}</h3>
    <h3><fmt:formatDate value="${dto.playDate}" pattern="yyyy-MM-dd" var="playDate" /> ${playDate}</h3>
    <h3><img width=50px height=50px src=${dto.teamLogo}></h3>
    
    </div>
    
    <!-- 좌석 선택창 -->
    <div>
    <!--탭 메뉴 jquery에서 버튼이벤트 안에 if문추가해서 변수방지 구현  -->
    	
		<select size=6 name="class_block" onchange="handleOnChange(this)">
			<optgroup label="블루">
			    <option value="101">101블록</option>
			    <option value="102">102블록</option>
			  </optgroup>
			  <optgroup label="레드">
			    <option value="201">201블록</option>
			    <option value="202">202블록</option>
			  </optgroup>
			  <optgroup label="오렌지">
			    <option value="301">301블록</option>
			    <option value="302">302블록</option>
			  </optgroup>
			  <optgroup label="그린">
			    <option value="401">401블록</option>
			    <option value="402">402블록</option>
			  </optgroup>
		</select>
		<!-- 이프문이용해서  -->
		<select name="sitNum" onchange="handleOnChange2(this)">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4<option>
		</select>
		
		<h3 id='result'></h3>
		<h3 id='result2'></h3>
		
	</div>
	
	<!-- 결제 창 -->
	<div>
		<h3>팀명:${dto.teamName}</h3>
		<h3><img width=50px height=50px src=${dto.teamLogo}></h3>
    	<h3><fmt:formatDate value="${dto.playDate}" pattern="yyyy-MM-dd" var="playDate" />시합날짜: ${playDate}</h3>
    	티켓번호:<h3 id='valResult'></h3>
    	<input type="text" id='valResult' value="valResult">
		가격:<h3 id='price'></h3>
      <input type="button" id="btn" class="btn btn-primary" value="결제하기">
    </div>
    
</div>
  
</div>
  <div>
	  <button id="prev">이전</button>
	  <button id="next">다음</button>
	  <button id="check">check</button>
  </div>
</div>




<script type="text/javascript" src="../resources/jquery/iamport.js"></script>
<!-- <script type="text/javascript" src="../resources/jquery/tabMenu.js"></script> -->
<!-- <script type="text/javascript" src="../resources/jquery/comboBox.js"></script> -->
</body>
</html>