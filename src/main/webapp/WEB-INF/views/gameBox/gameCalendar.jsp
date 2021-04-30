<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Calendar"%>
<% 
String yy =request.getParameter("year"); //2021
String mm =request.getParameter("month"); //12

Calendar cal = Calendar.getInstance();

int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH);

if( yy !=null && mm != null && !yy.equals("") && !mm.equals("")){
   y = Integer.parseInt(yy);
   m = Integer.parseInt(mm)-1;
}

cal.set(y,m,1);
//출력 년월의 1일날의 요일
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK); // 5, (1~7 7:토요일)
//출력 년월의 마지막 날짜
int lastday = cal.getActualMaximum(Calendar.DATE);


//이전버튼
int b_y = y;
int b_m = m;
if(m == 0) {
	b_y = b_y -1;
	b_m = 12;
}

//다음버튼
int n_y =y;
int n_m =m+2;
if(n_m ==13){
	n_y= n_y+1;
	n_m= 1;
}

%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<title>Home</title>
<link rel="stylesheet" href="../css/layout.css">

</head>

<style>

.t_div1{
	float:left;width: 20%;
}


.t_div2{
	float:left;width: 20%;
}


.t_div3{
	float:right;width: 10%;
	
}

</style>

<body>
	<c:import url="../template/header.jsp"></c:import>
	<h4 class="table" class="thead-dark">경기기록 > 일정&결과</h4>
	
	<style>
body {
   font-size: 13pt;
   color: #555555;
}
table{
   border-collapse: collapse;
}

th, td{
   border: 1px solid #cccccc;
   width: 100px;
   height: 50px;
   text-align: center;
}

caption {
   margin-bottom: 10px;
   font-size: 15px;   
}


</style>

	<form name="frm" method="post" action="gameCalendar">

		<caption>
			<div class="t_div1">
				<button type="button" onclick="location='gameCalendar?year=<%=b_y%>&month=<%=b_m%>'">이전</button>
			</div class>

			<div class="t_div2">
				<%=y %>년 <%=m+1 %>월
			</div class="t_div3">

			<div style="">
				<button type="button" onclick="location='gameCalendar?year=<%=n_y%>&month=<%=n_m%>'">다음</button>
			</div>
		</caption>

	</form>
	<table>

		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<tr>

			<%
      int count = 0;
      //1일을 출력하기 전 빈칸을 출력하는 설정
      
      for(int s=1; s<dayOfweek; s++){
         out.print("<td></td>");
         count++;
         
      }
      
      //날짜 출력하는 설정
      for(int d=1; d<=lastday; d++) {
         count++;
         String color ="#555555";
         if(count == 7){
        	 color="blue";
         } else if(count == 1){
        	 color="red";
         }
      %>
			<td style="color:<%=color%>"><%=d %> <c:forEach items="${list}" var="dto">
	         	${dto.team}
	         </c:forEach></td>
			<%   
      	//개행을 위한 설정
         if(count==7){
            out.print("<tr></tr>");
            count = 0; //변수 초기화
         }
      
      }

      while(count < 7){
    	  out.print("<td></td>");
    	  count++;
      }
      
      %>
		</tr>

	</table>
	<br>

	<button type="button" class="btn btn-info" onclick="fn_planeWrite">일정등록</button>
	<button type="button" class="btn btn-danger">일정삭제</button>
</body>
</html>
