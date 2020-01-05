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
			//아이디 값 가져오기
			idValue = $("#id").val()
			console.log("당신이 입력한 아이디는 " + idValue)
			
			//서버와 통신 필요!
			//$.ajax() 사용하면 됨
			//url, 전달할 data, 결과 처리
			$.ajax({
				url: "member.do",
				data: {
					id : idValue
					
				},
				success: function(result) {
					$("#d1").html(result)
				}
			})
			
		})
		$("#b2").click(function() {
			//아이디 값 가져오기
			admin = $("#admin").val()
			console.log("당신이 입력한 아이디는 " + admin)
			
			$.ajax({
				url: "admin.do",
				data: {
					admin : admin
					
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
아이디 : <input type="text" id="id"><br>
<button id="b1">아이디 중복 체크</button>
<hr color="red">

관리자 모드 입력 : <input type="text" id="admin"><br>
<button id="b2">관리자로 로그인</button>
<hr color="red">

<div id="d1"></div>
</body>
</html>