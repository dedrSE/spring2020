<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 쓴 글 정보입니다.</h3>
<hr color="red">
아이디 : ${bbsDTO.id}<br>
제목 : ${bbsDTO.title}<br>
내용 : ${bbsDTO.content}<br>
글쓴이 : ${bbsDTO.writer}<br>

</body>
</html>