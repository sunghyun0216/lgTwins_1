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
	<ul  class="tab_title">
    	<li class="on">날짜/조회</li>
    	<li>등급/좌석 선택</li>
    	<li>결제</li>
	</ul>
	<div style="display:inline-block; width:900px; " class="tab_cont">
  	<!-- 티켓정보 확인창 -->
	    <div class="on">
	    <span style="display:inline-block; width:910px; padding-left:40px;">
		    <table class="table">
		    	<tr>
					<td>${dto.playDate}</td>
					<td>${dto.playTime}</td>
					<td>잠실</td>
					<td><img width=50px height=50px src=${dto.logo}></td>
					<td>${dto.team}</td>
				</tr>
		    </table>
	    </span>	
		    <input type="hidden" id="team" value="${dto.team}">
		    <input type="hidden" id="logo" value="${dto.logo}">
		    <input type="hidden" id="playDate" value="${dto.playDate}">
		    <input type="hidden" id="playTime" value="${dto.playTime}">
		    <input type="hidden" id="id" value="${member.id}">
	    </div>
    
	    <!-- 좌석 선택창 -->
	    <div>
	    <!--탭 메뉴 jquery에서 버튼이벤트 안에 if문추가해서 변수방지 구현  -->
	
	    	<span style="display:inline-block; width:550px; height:500px; padding-left:30px; vertical-align:top; ">
	    		<h3 style=" text-align: left;">LG트윈스 vs ${dto.team}</h3>
		    	<img width=550px height=450px src="../resources/images/bookTicket.png">
		    </span>
		    
			<span style="display:inline-block; width:300px; height:500px; padding-left:60px; text-align:left">
		    	<span style="display:inline-block; width:300px; height:150px; ">
		    		<p>등급선택</p>	
					<select style="width:200px;height:200px;" size=6 name="class_block" onchange="handleOnChange(this)">
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
				</span>
			<!-- 이프문이용해서  -->
				<span style="display:inline-block; width:300x; height:50px; ">
					<select style="width:200px;height:30px;" name="sitNum" onchange="handleOnChange2(this)">
						<option value="1">좌석 1</option>
						<option value="2">좌석 2</option>
						<option value="3">좌석 3</option>
						<option value="4">좌석 4<option>
					</select>
				</span>
			</span>
		</div>
	
		<!-- 결제 창 -->
		<div>
		<div class="container">
		<h3>hi</h3>
		</div>
			<span style="display:inline-block; width:550px; height:500px; padding-left:30px; vertical-align:top; ">
	    		<h3 style=" text-align: left;">LG트윈스 vs ${dto.team}</h3>
		    	<img width=550px height=450px src="../resources/images/bookTicket.png">
		    </span>
		    
			<span style="display:inline-block; width:300px; height:500px; padding-left:60px; text-align:left;">
			<span style="display:inline-block; width:300px; height:100px; text-align: center">
				<p><img width=50px height=50px src=${dto.logo}> vs <img width=50px height=50px src="https://kgo.googleusercontent.com/profile_vrt_raw_bytes_1587515374_10653.jpg"></p>
			</span>
				<p>LG VS ${dto.team}</p>
		    	<p>잠실야구장</p>
		    	<p>${dto.playDate} ${dto.playTime} </p>
		    	예매정보<p id='valResult'></p>
				가격:<p id='price'></p>
				<input type="button" id="btn" class="btn btn-primary" value="결제하기">
			</span>
	    </div>
	</div>
	<div style=" text-align: right; padding-right:20px;">
		<button id="prev" class="btn btn-outline-danger">이전</button>
		<button id="next" class="btn btn-outline-danger">다음</button>
		<button id="check">check</button>
	</div>
</div>

<script type="text/javascript" src="../resources/jquery/iamport.js"></script>
</body>
</html>