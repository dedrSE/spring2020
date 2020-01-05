<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다양한 입력폼</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
</style>
</head>
<body>
	<form action="multi">
		<h1>회원가입 화면</h1>
		<hr color="red">
		<label for="usr"> ID :</label> <input type="text" name="id" class="form-control" id="usr"><br> 
		<label for="usr"> PWD :</label> <input type="text" name="pw" class="form-control" id="pwd"><br> 
		<label for="usr" style="color: pink"> NAME :</label> <input type="text" name="name"><br>
		<label for="usr"> TEL :</label> <select name="tel">
			<option value="sk telecom">SK</option>
			<option value="lg telecom">LG</option>
			<option value="kt telecom">KT</option>
			<option value="etc telecom">ETC</option>
		</select> <select name="no1">
			<option value="010">010
			<option value="011">011
			<option value="017">017
			<option value="018">018
		</select> <input type="text" name="no2" placeholder="000-0000"> <br>
		성별 : <input type="radio" value="man" name="gender">
		남자 <input type="radio" value="woman" name="gender">여자
		 <br> 
			취미 : 
			<input type="checkbox" value="run" name="hobby">달리기 
			<input type="checkbox" value="read" name="hobby">독서
			<input type="checkbox" value="swim" name="hobby">수영 
			<input type="checkbox" value="computer" name="hobby">컴퓨터 
			<br>
		하고 싶은 말 :
		<textarea rows="5" cols="30">here</textarea>
		<br>
		<button type="submit" class="btn btn-default">회원가입 처리</button>
	</form>

</body>
</html>