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
	<h3>전체 회원 정보</h3>
	<hr color="red">
	<c:forEach var="dto" items="${list}">
		<hr color="red">
		당신의 검색 id : ${dto.id} <!-- dto.getId() 출력 -->
		<br>당신의 검색 pw : ${dto.pw} <!-- dto.getId() 출력 -->
		<br>당신의 검색 name : ${dto.name} <!-- dto.getId() 출력 -->
		<br>당신의 검색 tel : ${dto.tel} <!-- dto.getId() 출력 -->
	</c:forEach>



</body>
</html>