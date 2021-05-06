<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav class="navbar navbar-expand-sm bg-gray navbar-gray nav nav justify-content-end bg-light">
		<!-- Links -->
		<ul class="navbar-nav">
			
			<c:if test="${empty member}">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogin">Login</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberJoinCheck">Join</a></li>
			</c:if>
			
			
			<c:if test="${not empty member}">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberPage">Page</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogout">Logout</a></li>
			</c:if>

		</ul>
	</nav>
	
	<nav class="navbar navbar-expand-sm bg-white navbar-white nav justify-content-center bg-light">
		<!-- Links -->
		<ul class="navbar-nav">
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 팀 </a>
				<div class="dropdown-menu">
					<div class="row">
						<div class="col">
						 	<a class="dropdown-item " href="${pageContext.request.contextPath}/teaminfo/AllplayerList">선수단</a> 
						</div>
						<div class="col">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'11'}">투수</a> <!--  클릭시 GET 요청을 한다.QUERY문을 쏜다. -->
							<a class="dropdown-item" href="${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'12'}">포수</a> 
							<a class="dropdown-item" href="${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'13'}">내야수</a> 
							<a class="dropdown-item" href="${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'14'}">외야수</a>
<%-- 							<a class="dropdown-item" href="${pageContext.request.contextPath}/teaminfo/plrPerPosi/?tpNum=${'15'}">육성선수</a>   --%>
						</div>
					</div>
					
				</div>
			</li>
			
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 경기 기록 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/gameBox/gameBoxList">gamebox</a> 
					<a class="dropdown-item" href="${pageContext.request.contextPath}/gameBox/gameCalendar">경기일정</a> 
					<a class="dropdown-item" href="${pageContext.request.contextPath}/match/matchList">꾸아아가</a> 
				</div>
			</li>
			
			<!-- Brand, logo -->
			<a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="https://www.lgtwins.com/images/twins_logoB.png" alt="My Image" width="150" height="100"></a>
																			
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 티켓 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/ticket/bookTicket">티켓 예매</a> 
					<a class="dropdown-item" href="${pageContext.request.contextPath}/ticket/ticketInfo">티켓 안내</a> 
				</div>
			</li>
			
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Twins </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/notice/noticeList">공지사항/이벤트</a> 
					<a class="dropdown-item" href="${pageContext.request.contextPath}/news/newsList">twins news</a> 
				</div>
			</li>
		</ul>
	</nav>

	<!-- 임시라구요 -->
	<a class="btn btn-primary" href="${pageContext.request.contextPath}/teaminfo/showform" role="button">팀원 입력폼</a>