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
    <h3>ddd ${dto.teamName}</h3>
    <h3><fmt:formatDate value="${dto.playDate}" pattern="yyyy-MM-dd" var="playDate" /> ${playDate}</h3>
    <h3>ddd ${dto.teamLogo}</h3>
    </div>
    
    <!-- 좌석 선택창 -->
    <div>
    <!--탭 메뉴 jquery에서 버튼이벤트 안에 if문추가해서 변수방지 구현  -->
    	
		<select size=6 name="language" onchange="handleOnChange(this)">
			<optgroup label="블루">
			    <option value="b101">101블록</option>
			    <option value="b102">102블록</option>
			  </optgroup>
			  <optgroup label="레드">
			    <option value="b201">201블록</option>
			    <option value="b202">202블록</option>
			  </optgroup>
			  <optgroup label="블루">
			    <option value="b301">301블록</option>
			    <option value="b302">302블록</option>
			  </optgroup>
			  <optgroup label="그린">
			    <option value="b401">401블록</option>
			    <option value="b402">402블록</option>
			  </optgroup>
		</select>
		
		
		<h3 id='result'></h3>
	</div>
	
	<!-- 결제 창 -->
	<div>
      tab3_content
      
    </div>
    
</div>
  
</div>
  <div>
	  <button id="prev">이전</button>
	  <button id="next">다음</button>
	  <button id="check">check</button>
  </div>
</div>


<script type="text/javascript" src="../resources/jquery/tabMenu.js"></script>
<script type="text/javascript" src="../resources/jquery/comboBox.js"></script>
</body>
</html>