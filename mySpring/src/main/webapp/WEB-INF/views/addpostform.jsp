<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/css2.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<title>Add Page</title>

</head>
<body>
<div id="total">
<h1></h1>
<div id="box1">
<h2>정보등록하기</h2>
</div>

<form action="./addok" method="post">
	<div id="box2">
	<table id="edit" style="float : left; margin-left: auto; margin-right: auto;">
		<tr><td style="margin-top:40px;">이름</td><td><input type="text" name="title"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">나이</td><td><input type="text" name="director"/></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">자기소개</td><td><textarea cols="50" rows="5" name="dialogue"></textarea></td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">주소</td><td><input type="text" name="actor"/> </td></tr>
		<tr><td style="font-family: 'Ubuntu', sans-serif;">좋아하는것</td><td><input type="text" name="writer"/></td></tr>
	</table>
	</div>
	<button type="button" onclick="location.href='./list'" style="font-family: 'Ubuntu', sans-serif;">목록보기</button>
	<button type="submit" style="font-family: 'Ubuntu', sans-serif;">등록하기</button>
</form>
</div>
</body>
</html>