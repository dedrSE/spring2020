<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>당신이 가입한 회원가입 정보입니다.</h3>
<hr color="red">
아이디 : ${memberDTO.id}<br>
패스워드 : ${memberDTO.pw}<br>
이름 : ${memberDTO.name}<br>
전화번호 : ${memberDTO.tel}<br>

</body>
</html>