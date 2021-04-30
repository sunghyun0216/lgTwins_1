<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">	

		<h2>Twins ${board}</h2>

		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>TITLE</th>
					<th>DATE</th>
				</tr>
			</thead>

			<tbody>
			<c:forEach items="${list}" var="dto">
					<tr>
						<td><a href="./${board}Select?num=${dto.num}"> <c:catch>
									<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
								</c:catch> ${dto.title}
						</a></td>
						<td>${dto.regDate}</td>

					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>

	<div class="container">
		 <ul class="pagination">
  
  <c:if test="${pager.pre}">	
    <li class="page-item"><a class="page-link" href="./${board}List?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">Previous</a></li>
   </c:if>
   
   <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
   
    <li class="page-item"><a class="page-link" href="./${board}List?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
   </c:forEach>
   
    <c:if test="${pager.next}">
    <li class="page-item"><a class="page-link" href="./${board}List?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">Next</a></li>
    </c:if>
  </ul>

		<div class="input-group mt-3 mb-3">
			<form id="frm" action="./${board}List" class="form-inline">
				<iuput type="hidden" name="curPage" value="1" id="curPage">
				<div class="input-group-prepend">
					<select class="form-control" name="kind" id="kind">
						<option class="sel">Title</option>
	  					<option class="sel">Contents</option>
	  					<option class="sel">Title+Contents</option>
					</select>
				</div>
				<input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="" >
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">Search</button>
				</div>
			</form>
		</div>
		
</div>
</body>
</html>