<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<style type="text/css">
li {
	list-style: none;
	float: left;
	padding: 10px; /* li의 안쪽 여백 */
}

li:nth-child(2n) { /* 짝수인 2, 4번째  li */
	background: blue;
}
li:nth-child(2n+1) { /* 짝수인 2, 4번째  li */
	background: lime;
}
/* 클래스 이름 선택은 .클래스 이름 */
.c1 {
	color: gold;
	
}
/* unique한 것을 선택할 때 id를 사용 */
/* id 를 선택할 때는 #아이디명 */
#i1 {
	border : 5px solid green;
	
}

</style>

</head>
<body>
	네이버 사전 list
	<br>
	<ul>
		<li>영어사전</li>
		<li class="c1">한국어사전</li>
		<li class="c1">영한사전</li>
		<li id="i1">스페인사전</li>
	</ul>

</body>
</html>