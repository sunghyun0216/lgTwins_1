<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
 
 <div class="container">
 <h2>${board} Update form</h2>
  <form id="frm" action="./${board}Update" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="num" value="${param.num}">
  	
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" name="title" value="${dto.title}">
    </div>
    
    <div class="form-group">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="5" id="contents" name="contents">${dto.contents}</textarea>
    </div>
    
    <input type="submit" id="btn" value="UPDATE" class="btn btn-primary">
  </form>
</div>

 <script type="text/javascript" src="../resources/js/insertCheck.js"></script>
 <script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
</body>
</html>