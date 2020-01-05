<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>당신의 검색 정보입니다.</h3>
<hr color="red">
당신의 검색 id : ${dto.id} <!-- dto.getId() 출력 -->
당신의 검색 pw : ${dto.pw} <!-- dto.getId() 출력 --><br>
당신의 검색 name : ${dto.name} <!-- dto.getId() 출력 --><br>
당신의 검색 tel : ${dto.tel} <!-- dto.getId() 출력 --><br>
</body>
</html>