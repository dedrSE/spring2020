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
			id = $("#id").val()
			console.log("당신이 입력한 아이디는 " + id)
			list = ["root", "admin", "manager"]
			
			result="사용할 수 있는 아이디입니다."
			for(i=0 ; i<3 ; i++) {
				if(id == list[i]) {
					result = "아이디가 이미 사용 중입니다."
				}
			}
			$("#d1").html(result)
		})
		$("#b2").click(function() {
			//아이디 값 가져오기
			admin = $("#admin").val()
			console.log("당신이 입력한 아이디는 " + admin)
			id = "admin"
			result="누구신지..?"
			if(admin == "admin") {
					result = "환영합니다!"
			}
			$("#d1").html(result)
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