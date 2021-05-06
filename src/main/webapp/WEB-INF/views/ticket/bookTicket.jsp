<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter" %>
<% LocalDateTime now = LocalDateTime.now();%>
<% LocalDateTime threeDays = now.plusDays(3);
String formatDate = threeDays.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
String nowDate = now.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>bookTicket</title>
<script type="text/javascript">
	function block() {
		alert("로그인시 이용 가능한 페이지입니다.");
		location.href="../../t2/member/memberLogin";
	}
</script>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h5>티켓 > 티켓예매</h5>
		<!-- 날짜간의 차를 이용해서 페이징,및 예매버튼 구현 페이지당 9개 -->
		<table class="table">
			<tbody>
				<c:forEach items="${list}" var="dto">
					<fmt:parseNumber var="i2" type="number" value="<%=formatDate %>" />
					<fmt:parseNumber var="now" type="number" value="<%=nowDate %>" />
					<fmt:parseNumber var="i1" type="number" value="${dto.playDate}" />	
					<fmt:parseNumber var="month" value="${(i1/100 - i2/100)*30}" integerOnly="true" />
					<fmt:parseNumber var="days" value="${(i1%100 - i2%100)}" integerOnly="true" />
					<tr>
						<td>${dto.playDate}</td>
						<td>${dto.playTime}</td>
						<td>잠실</td>
						<td><img width=50px height=50px src=${dto.logo}></td>
						<td>${dto.team}</td>
						<c:if test="${ i2 >= i1 }"> 			
							<td>
 								<c:if test="${not empty member}">
									<button class="btn btn-secondary" onclick="window.open('./purchaseTicket?playDate=${dto.playDate}','window_name','width=1000,height=670,location=no,status=no,scrollbars=yes');">결제하기</button>
								</c:if>
									
								<c:if test="${empty member}">
									<button class="btn btn-secondary" onclick='block()'>결제하기</button>
								</c:if>
							</td>
 						</c:if> 
 						<c:if test="${ i2 < i1 }">
 							<td><p>예매오픈 D-${month + days}</p></td>
 						</c:if>
					</tr>
					 			    
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>