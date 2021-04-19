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
  
    <div class="on">
    <h3>ddd ${dto.teamName}</h3>
    <h3><fmt:formatDate value="${dto.playDate}" pattern="yyyy-MM-dd" var="playDate" /> ${playDate}</h3>
    <h3>ddd ${dto.teamLogo}</h3>
    </div>
    
    <!-- 좌석 선택창 -->
    <div>
    <!--탭 메뉴 jquery에서 버튼이벤트 안에 if문추가해서 변수방지 구현  -->
	    <select name="language" onchange="handleOnChange(this)">
		  <option value="korean">한국어</option>
		  <option value="english">영어</option>
		  <option value="chinese">중국어</option>
		  <option value="spanish">스페인어</option>
		</select>
		<p id='result'></p>
	</div>
    <div>
      tab3_content
    </div>
  </div>
  <button id="prev">이전</button>
  <button id="next">다음</button>
</div>
<div>

</div>


<script type="text/javascript" src="../resources/jquery/tabMenu.js"></script>
</body>
</html>