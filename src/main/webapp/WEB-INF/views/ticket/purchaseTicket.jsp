<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      tab1_content
    </div>
    <div>
    <!--탭 메뉴  -->
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