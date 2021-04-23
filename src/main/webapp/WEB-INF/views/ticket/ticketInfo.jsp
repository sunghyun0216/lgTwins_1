<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<style>
	table, th, td {
	  border: 1px solid black;
	  border-collapse: collapse;
	}
	th, td {
	  padding: 5px;
	  text-align: left;    
	}
</style>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>ticketInfo</title>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>ticketInfo</h1>

	<table style="width:100%">
  	<tr>
	    <th rowspan="2">좌석등급</th>
	    <th colspan="2">일반가격</th>
	  </tr>
	  <tr>

	    <td>주중</td>
	    <td>주말</td>
	  </tr>
	  <tr>
	    <td>프리미엄</td>
	    <td colspan="2">70000</td>
	    
	  </tr>
	  <tr>
	    <td>블루</td>
	    <td>18000</td>
	    <td>20000</td>
	  </tr>
	  <tr>
	    <td>레드</td>
	    <td>15000</td>
	    <td>17000</td>
	  </tr>
	  <tr>
	    <td>그린</td>
	    <td>8000</td>
	    <td>9000</td>
	  </tr>
</table>




</body>
</html>