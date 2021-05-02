<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- 여기서 부터는 선수 개별 기록, ajax 통신을 이용하여 그때 그때 불러오기  -->
	<!-- 라디오 선택 (기록, 포토,이력 연봉) -->
	<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
 	<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
  	<label class="btn btn-outline-primary" for="btnradio1">포토</label>

  	<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
 	 <label class="btn btn-outline-primary" for="btnradio2">이력</label>

  	<input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
  	<label class="btn btn-outline-primary" for="btnradio3">연봉</label>
	</div>
	<div class="contents_Selected">
	
	</div>
	