<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	/* 트리구조로 미리 바디부분 가지고 있음  */
	$(function() {
		$("#b1").click(function() {
			telValue = $("#tel").val()
			$.ajax({
				url: "tel.do",
				data: {
					tel : telValue
				},
				success: function(result) {
					$("#d1").html(result)
				}

			})

		})
		
		$("#b2").click(function() {
			telValue = $("#tel").val()
			$.ajax({
				url: "tel2.do",
				data: {
					tel : telValue
				},
				success: function(result) {
					$("#d1").html(result)
				}

			})

		})
		
		$("#b3").click(function() {
			moneyValue = $("#money").val()
			levelValue = $("#level").val()
			$.ajax({
				url: "money.do",
				data: { /* JavaScript Object Notation --> JSON */
					money : moneyValue,
					level : levelValue
				},
				success: function(result) {
					$("#d1").html(result)
				}

			})

		})
		
	})//
</script>
</head>
<body>
	전화번호 입력 :
	<input type="text" id="tel">
	<br>
	<button id="b1">인증번호 받기 (랜덤한 값)</button><br>
	<button id="b2">인증번호 받기 (조건에 해당하는 값)</button><br>
	<!-- 010이면 1111, 011이면 2222, 018이면 3333, 나머지는 4444 -->
	<br>
	결제금액 : <input type="text" id=money>
	등급입력 : <input type="text" id=level>
	<button id="b3">결제하기 처리</button>
	<hr color="red">
	<div id="d1"></div>
</body>
</html>