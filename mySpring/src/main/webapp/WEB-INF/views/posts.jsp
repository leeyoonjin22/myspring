<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<link href="../css/css1.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>

<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='./deleteok/'+id;
	}
</script>
</head>
<body>
<div id="total">
<h1 id="sign">Movie Database</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>영화 제목</th>
	<th>영화 감독</th>
	<th>영화 한줄(대사)</th>
	<th>추천</th>
	<th>작성자</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getDirector()}</td>
		<td>${u.getDialogue()}</td>
		<td>${u.getRecommend()}</td>
		<td>${u.getWriter()}</td>
		<td><a href="./edit/${u.getSeq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="./add">Add New Post</a>
</div>
</body>
</html>