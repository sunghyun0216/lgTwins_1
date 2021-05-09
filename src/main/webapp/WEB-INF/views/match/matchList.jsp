<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table class="table">
		<thead class>  
			<tr>
				<th>1</th>
				<th>2</th>
				<th>3</th>
				<th>4</th>
				<th>5</th>
				<th>6</th>
				<th>7</th>
				<th>8</th>
				<th>9</th>
				<th>R</th>
				<th>H</th>
				<th>E</th>
				<th>B</th>
			</tr>
		</thead>
		
		<tbody>			
			<c:forEach items="${list5}" var="dto">
			<tr>
				<td>${dto.score1}</td>
				<td>${dto.score2}</td>
				<td>${dto.score3}</td>
				<td>${dto.score4}</td>
				<td>${dto.score5}</td>
				<td>${dto.score6}</td>
				<td>${dto.score7}</td>
				<td>${dto.score8}</td>
				<td>${dto.score9}</td>
				<td>${dto.runs}</td>
				<td>${dto.hits}</td>
				<td>${dto.mistake}</td>
				<td>${dto.balls}</td>
			</tr>
			</c:forEach>
		</tbody>
		
		
		
</table>

		<div id="d1">
			<div id="d2"></div>
		</div>

		<button id ="btn2" class="b">click</button>
		
<script type="text/javascript">

	$("btn2").click(function () {
		$.get("./test?num=3", function(data){
			$("#d2").html(data);
		});
	})
</script>	
	
</body>
</html>