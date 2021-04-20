<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>z</h1>

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
			<c:forEach items="${list2}" var="dto">
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
</body>
</html>