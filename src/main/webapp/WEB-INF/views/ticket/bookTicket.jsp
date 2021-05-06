<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="../template/bootStrap.jsp"></c:import>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
<title>bookTicket</title>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h5>티켓 > 티켓예매</h5>
		<!-- 날짜간의 차를 이용해서 페이징,및 예매버튼 구현 페이지당 9개 -->
		<table class="table">
			<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td><fmt:formatDate value="${dto.playDate}"
								pattern="yyyy-MM-dd" var="playDate" /> ${playDate}</td>

						<td><fmt:formatDate value="${dto.playDate}" pattern="HH:mm" />
						</td>

						<td>잠실</td>
						<td><img width=50px height=50px src=${dto.teamLogo}></td>
						<td>${dto.teamName}</td>
<%-- 						<c:if test="${today > playDate }">
 --%>							<td>
								<button onclick="window.open('./purchaseTicket?num=${dto.num}','window_name','width=1000,height=800,location=no,status=no,scrollbars=yes');">결제하기</button>
							</td>
<%-- 						</c:if>
 --%>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</body>
</html>