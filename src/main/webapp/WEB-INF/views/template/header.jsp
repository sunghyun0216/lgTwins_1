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
						 	<a class="dropdown-item " href="#">선수단</a>
						</div>
						<div class="col">
							<a class="dropdown-item" href="#">투수</a> 
							<a class="dropdown-item" href="#">포수</a> 
							<a class="dropdown-item" href="#">내야수</a> 
							<a class="dropdown-item" href="#">외야수</a> 
						</div>
					</div>
					
				</div>
			</li>
			
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 경기 기록 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">gamebox</a> 
					<a class="dropdown-item" href="#">경기일정</a> 
					<a class="dropdown-item" href="#">순위</a> 
				</div>
			</li>
			
			<!-- Brand -->
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">Logo</a>
			
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
				data-toggle="dropdown"> 고객문의 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">공지사항</a> 
					<a class="dropdown-item" href="#">qna</a> 
				</div>
			</li>
		</ul>
	</nav>