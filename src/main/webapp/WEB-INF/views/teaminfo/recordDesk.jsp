<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- 여기서 부터는 선수 개별 기록  -->
	<form class="record_desk" action="">
		<!-- 목록 선택  -->
		<div class="desk_header">
			<a class="on" href ="" data-tab="0">상세기록</a>
			<a href ="" data-tab="1">포토</a>
			<a href ="" data-tab="2">경력</a>
			<a href ="" data-tab="3"> 연봉</a>
		</div>
		
		<div class="right_header">
			<div class="recommend">
				<span class="heart" onclick="" id="recomendHeart">
					<i class="count" id="recommendCnt"></i>
				</span>
			</div>
			<div class="sns_link">
				<span class="facebook"></span>
				<span class="kakao"></span>
				<span class="band"></span>
			</div>
		</div>
		
		<div class="tab_content" data-tab ="0" style="display: none"></div>
		<div class="tab_content" data-tab ="1" style="display: block">
		</div>
		
		<div class="tab_content" data-tab ="2" style="display: none">
			<div class="career_container"></div>
		</div>
		<div class="tab_content" data-tab ="3" style="display: none">
			<div class="pay_container"></div>
		</div>
	</form>
	
	<div>
	</div>