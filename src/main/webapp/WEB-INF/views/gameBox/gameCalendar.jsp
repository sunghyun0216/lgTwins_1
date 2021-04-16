<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<title>Home</title>
 <link rel="stylesheet" href="../resources/css/calendar2.css">
</head>


<c:import url="../template/header.jsp"></c:import>
<h4 class="table"class="thead-dark"> 경기기록 > 일정&결과 </h4>
<body>

 <div class="calendar">
        <div class="header">
            <div class="year-month"></div>
            <div class="nav">
                 <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
   				 <button class="nav-btn go-today" onclick="goToday()">Today</button>
   				 <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
        </div>
        <div class="main">
            <div class="days">
                <div class="day">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day">토</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>
<script type="text/javascript" src="../resources/js/calendar2.js"></script>   


 <button type="button" class="btn btn-info" onclick="fn_planeWrite">일정등록</button>
 <button type="button" class="btn btn-danger">일정삭제</button>
</body>

</html>