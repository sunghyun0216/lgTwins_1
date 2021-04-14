<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Calendar"%>
<% 

String yy =request.getParameter("year");
String mm =request.getParameter("month");

Calendar cal = Calendar.getInstance();

int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH);

if( yy !=null && mm != null && !yy.equals("") && !mm.equals("")){
   y = Integer.parseInt(yy);
   m = Integer.parseInt(mm)-1;
}

cal.set(y,m,1);
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK); // 5, (1~7 7:토요일)
int lastday = cal.getActualMaximum(Calendar.DATE);

%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<title>Home</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<h4 class="table"class="thead-dark"> 경기기록 > 일정&결과 </h4>

<style>
body {
   font-size: 9pt;
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

<form name="frm" method="post" action="home.jp">         
<input type="text" name="year" size="3">년
<input type="text" name="month" size="3">월
<input type="submit" value="전송"></br>

  <caption><%=y %>년 <%=m+1 %>월</caption>
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
      
      for(int s=1; s<dayOfweek; s++){
         out.print("<td></td>");
         count++;
      }
      
      
      for(int d=1; d<=lastday; d++) {
         count++;
      %>
         <td><%=d %></td>
      <%   
         if(count%7==0){
            out.print("<tr></tr>");
         }
      
      }
      %>
      </tr>
   
   </table>

</body>
</html>