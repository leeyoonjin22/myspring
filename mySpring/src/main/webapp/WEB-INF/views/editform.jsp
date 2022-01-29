<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../css/css3.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<title>Edit Page</title>

</head>
<body>
<div id="total">
<h1>Movie Database</h1>
<div id="box1">
<h2 >후기 편집하기</h2>
</div>


<form:form commandName="boardVO" method="POST" action="../editok">
	<input type="hidden" name="seq" value="${boardVO.getSeq()}">
	<div id="box2">
	<table id="edit" style="margin-left: auto; margin-right: auto;">
		<tr><td style="margin-top:40px;">이름</td><td><input type="text" value="${boardVO.getTitle()}" name="title"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">나이</td><td><input type="text" value="${boardVO.getDirector()}"name="director"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">자기소개</td><td><textarea cols="50" rows="5" name="dialogue">${boardVO.getDialogue()}</textarea></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">주소</td><td><input type="text" value="${boardVO.getActor()}" name="recommend" /></tr>
		
		<tr><td style="font-family: 'Ubuntu', sans-serif;">좋아하는것</td><td><input type="text" value="${boardVO.getWriter()}" name="writer"/></td></tr>
	</table>
	</div>
	<button type="submit" value="Submit">수정하기</button>
	<button type="button" value="cancle" onclick="history.back()">취소하기</button>
</form:form>
</div>

</body>
</html>