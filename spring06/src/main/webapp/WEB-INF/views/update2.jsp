<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시물 ${bbsDTO.id} 수정 내용</h3>

<hr color="red">
	<table border="1">
		<tr align="center">
			<td width="100" bgcolor="yellow">아이디</td>
			<td width="200">${bbsDTO.id}</td>
		</tr>
		<tr align="center">
			<td width="100" bgcolor="yellow">제목</td>
			<td width="200">${bbsDTO.title}</td>
		</tr>
		<tr align="center">
			<td width="100" bgcolor="yellow">내용</td>
			<td width="200">${bbsDTO.content}</td>
		</tr>
		<tr align="center">
			<td width="100" bgcolor="yellow">작성자</td>
			<td width="200">${bbsDTO.writer}</td>
		</tr>

	</table>
	<a href="bbsList">전체 게시물 목록 보기</a>

</body>
</html>