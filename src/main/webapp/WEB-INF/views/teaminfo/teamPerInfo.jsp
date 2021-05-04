<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="UTF_8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<c:import url="../template/bootStrap.jsp"></c:import>

<title>TeamInfo Page</title>

</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
	<div>
		<p><a href= "${pageContext.request.contextPath}/teaminfo/AllplayerList"> &lt; 선수단 목록 </a>
	</div>
	
	<div class="container">
  		<div class="row">
    		<div class="col">
      			<div class="card" style="width: 18rem;">
  			<div class="card-body">
    		<span class="card-text">${playerInfo.backNum}</span>
    		<span class="card-text">${playerInfo.tpName}</span>
    		<span class="card-title">${playerInfo.usehand}</span>
    		<h4> </h4>
    		<h3 class="card-subtitle mb-2 text-muted">${playerInfo.tKName}</h3>
    		
    		<p class="card-text">${playerInfo.birth} ＊ ${playerInfo.height}cm * ${playerInfo.weight}kg</p>
   		 	<p class="card-text">${playerInfo.edu}</p>
   		 	<p class="card-text">${playerInfo.joinyear} 입단</p>
  		</div>
		</div>
    		</div>
    		<div class="col">
     			<div class="text-center">
					<img src="..." class="rounded" alt="..." size="">
				</div>
    		</div>
    		<div class="col">
    		<div class="card" style="width: 18rem;">
    			<div class="card-body">
      				<h5>이곳에 선수경기 성적이 <br> 들어갔다고 가정</h5 >
  				</div>
    		</div>	
    		</div>
  		</div>
	</div> <!-- 선수 정보 끝 -->
	<br><br>
	<c:import url="./infoDetail.jsp"></c:import>
</body>
</html>