<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head> 
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.css">
<script src='//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.js'></script>
<title>Home</title>

<link rel="stylesheet" href="../resources/css/calendar.css">

<script>
         $(function() {
              $( "#datepicker2" ).datepicker({
                dateFormat: 'yy년 mm월 dd일',
                prevText: '이전 달',
                nextText: '다음 달',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                changeMonth: true,
                changeYear: true,
                yearSuffix: '년'
              });
         });
</script>
</head>
<body>
   <c:import url="../template/header.jsp"></c:import>
   
<h4 class="table"class="thead-dark"> 경기기록 > GAME BOX </h4>

<form name="frm" method="get" action="./gameBoxList">
<!-- 옆에 버튼을 만들어서 날짜값을 셋팅후 버튼을 누르면 컨트롤러로 그 값을 보낸다. -->

<div class="totalbox">
   <div class="upper">
      <input type="text" id="datepicker2" class="go-today" style="width: 160px; text-align: center;">
      <input type="submit" class="btn btn-primary" id="kiki" style="width: 70px; text-align: center;" value="이동">
      <input type="hidden" id="playDate" name="playDate">
      <input type="hidden" id="dateDate" name="dateDate" value="${date}">
      
<!--       <button class="btn btn-primary" id="kiki">이동</button> -->
   </div>
</div>

</form> 
   
<div>   
   <div class="card border-info mb-3" style="border: max-width: 18rem; float: left; width: 33%;">
   <br>
   <br>
      <c:forEach items="${list}" var="dto">
      <c:if test="${dto.team eq '엘지'}">
      <center><h2><img width=50px height=50px src= ${dto.logo}> 
      
      <c:catch>
      <c:if test="${member.id eq 'admin'}">
      <a href="./gameBoxUpdate?orderNum=${dto.orderNum}"></c:if></c:catch> ${dto.team}</a> 
      <c:if test="${dto.playing eq '경기중' or dto.playing eq '경기종료'}">${dto.score} </c:if></h2></center>
      <center><c:if test="${dto.playing eq '경기종료'}">${dto.wwl}</c:if></center>
      </c:if>
      </c:forEach>
   <br>
   <br>
   
   </div>
   
   <div class="card border-dark mb-3" style="border: 0px solid white; float: left; width: 33%;">
   <br>
   
      <c:forEach items="${list}" var="dto">
   <c:if test="${dto.playing eq '경기종료' or dto.playing eq '경기중'}">
   <center>
   <center class="card border-dark mb-3" style="max-width: 18rem;">
   <table>
         <thead>  
         <c:if test="${dto.playing eq '경기중' or dto.playing eq '경기종료'}">
            <tr>
               
               <th></th>
               <th>1</th>
               <th>2</th>
               <th>3</th>
               <th>4</th>
               <th>5</th>
               <th>6</th>
               <th>7</th>
               <th>8</th>
               <th>9</th>
               <th>R</th>
               <th>H</th>
               <th>E</th>
               <th>B</th>
            </tr>
         </c:if>   
         </thead >
         
         <tbody >   
            
            <tr>
               <c:if test="${dto.playing eq '엘지'}"></c:if>
               <td>${dto.team }</td>
               <td>${dto.score1}</td>
               <td>${dto.score2}</td>
               <td>${dto.score3}</td>
               <td>${dto.score4}</td>
               <td>${dto.score5}</td>
               <td>${dto.score6}</td>
               <td>${dto.score7}</td>
               <td>${dto.score8}</td>
               <td>${dto.score9}</td>
               <td>${dto.runs}</td>
               <td>${dto.hits}</td>
               <td>${dto.mistake}</td>
               <td>${dto.balls}</td>
            </tr> 
         
         </tbody>
   </table>
   
   </center>
   </center>
   
   </c:if>
   <c:if test="${dto.playing eq '경기중'}">
   <c:if test="${dto.team eq '엘지'}">
   <center><h5 class="card border-dark mb-3" style="max-width: 18rem;">${dto.place} &nbsp;  ${dto.playTime} &nbsp; ${dto.playing} </h5></center>
   </c:if>
   </c:if>
   

   <c:if test="${dto.playing eq '경기종료'}">
   <c:if test="${dto.team eq '엘지'}">
   <center><h5 class="card border-primary mb-3" style="max-width: 18rem;">${dto.place} &nbsp;  ${dto.playTime} &nbsp; ${dto.playing} </h5></center>
   </c:if>
   </c:if>
   
   <c:if test="${dto.playing eq '경기전'}">
   <c:if test="${dto.team eq '엘지'}">
   <center><h1 class="card border-success mb-3" style="max-width: 18rem;">VS</h1></center>  
   <center><h5 class="card border-dark mb-3" style="max-width: 18rem;">${dto.place} &nbsp;  ${dto.playTime} &nbsp; ${dto.playing} </h5></center>
   </c:if>
   </c:if>
   
   <c:if test="${dto.playing eq '경기취소'}">
   <c:if test="${dto.team eq '엘지'}">
      <br>
      <center><h3 class="card border-success mb-3" style="max-width: 18rem;">경기취소</h3></center>  
   </c:if>
   </c:if>
   
      </c:forEach>
   </div> 
   
   <div class="card border-danger mb-3" style="border: max-width: 18rem; float: left; width: 33%;">
   <br>
   <br>
      <c:forEach items="${list}" var="dto">
      <c:if test="${dto.team ne '엘지'}">
      <center><h2><c:if test="${dto.playing eq '경기중' or dto.playing eq '경기종료'}">${dto.score} </c:if>
      <c:catch>
      <c:if test="${member.id eq 'admin'}">
         <a href="./gameBoxUpdate?orderNum=${dto.orderNum}"></c:if> </c:catch> ${dto.team}</a> 
      
      <img width=50px height=50px src= ${dto.logo}> </h2></center>
      <center><c:if test="${dto.playing eq '경기종료'}">
      ${dto.wwl}</c:if></center>
      </c:if>
      </c:forEach>
   <br>
   <br>
   </div>
</div>   



<div>
<c:catch>
<c:if test="${member.id eq 'admin'}">
<a href="./gameBoxInsert" class="btn btn-info" role="button">경기일정 등록</a>
</c:if>
</c:catch>
</div>

<script type="text/javascript" src="../resources/js/calendar.js"></script>



</body>
</html>