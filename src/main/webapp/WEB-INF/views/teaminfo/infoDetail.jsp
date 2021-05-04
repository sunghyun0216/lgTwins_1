<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h2>${playerInfo.tNum}</h2> <!-- 잘 넘어 갔다! -->
	<div class="detail_header border-bottom">
		<!-- 선수 상세기록과 사진,경력, 연봉을 볼 수 있는 부분 radio 선택하기-->
		
		<div class="container">
  			<div class="row">
    			<div class="col-sm-8">
    				<a onclick="" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">포토</a>
					<a onclick="" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">이력</a>
					<a onclick="" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">연봉</a>	
    			</div>
    			<div class="col-sm-4">
    				<a href="#" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">팬  ${playerInfo.likeNum} </a>
    				<a href="#" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">카카오스토리 공유</a>
    			</div>
  			</div>
  		</div>
	</div><!-- end header -->
	
	<div class="col">	
		<h2>Ajax로 요청하는 정보만  가져올것</h2>
	</div>
	
	<script type="text/javascript" src="../resources/jquery/PlayerDetailajax.js"></script>
	
	<button type="button" onclick="loadDoc()"> Change Content</button>
	