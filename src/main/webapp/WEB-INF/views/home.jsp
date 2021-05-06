<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="./template/bootStrap.jsp"></c:import>

<title>Home</title>
<style>
    *{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slide{height:500px;overflow:hidden;}
    .slide ul{width:calc(100% * 4);display:flex;animation:slide 16s infinite;} /* slide를 8초동안 진행하며 무한반복 함 */
    .slide li{width:calc(100% / 4);height:500px;}
    .slide li:nth-child(1){background:#ffffff;}
    .slide li:nth-child(2){background:#ffffff;}
    .slide li:nth-child(3){background:#ffffff;}
    .slide li:nth-child(4){background:#ffffff;}
    @keyframes slide {
      0% {margin-left:0;} /* 0 ~ 10  : 정지 */
      10% {margin-left:0;} /* 10 ~ 25 : 변이 */
      25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */
      35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */
      50% {margin-left:-200%;}
      60% {margin-left:-200%;}
      75% {margin-left:-300%;}
      85% {margin-left:-300%;}
      100% {margin-left:0;}
    }
  </style>

</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	<div class="slide">
	    <ul>
	      <li style="display:inline-block; text-align:center;"><img width=800px height=500px src="https://www.lgtwins.com/images/homefield/seoul/img_facility002.jpg"></li>
	      <li style="display:inline-block; text-align:center;"><img width=800px height=500px src="https://www.lgtwins.com/service/download.ncd?actID=BR_RetrieveFileBySeq&baRq=IN_DS&baRs=DOWNLOAD&IN_DS.POLICY=policy2&IN_DS.LF_SEQ=123034"></li>
	      <li style="display:inline-block; text-align:center;"><img width=800px height=500px src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151127_202%2Fsummercorn_1448596523302LhkKw_JPEG%2Fnaver_com_20151127_125338.jpg&type=a340"></li>
	      <li style="display:inline-block; text-align:center;"><img width=800px height=500px src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2Fdata28%2F2007%2F9%2F30%2F132%2F%25C7%25EC%25C7%25EC_robin970928.jpg&type=a340"></li>
	    </ul>
	</div>
</body>
</html>