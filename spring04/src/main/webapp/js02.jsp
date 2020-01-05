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
		target = "12345";
		$("#b1").click(function() {
			//입력한 값을 가지고 옴 -> input 태그인 경우 val()함수 사용 넣을때도 사용
			num = $("#num").val()
			//타겟과 입력한 값이 동일한지 체크
			if(num==target) {
				alert("you're right!")
			}else {
				alert("you're wrong!!!")
			}
		})
		
		
		
	})


</script>
</head>
<body>
	생각하고 있는 정답 입력 :  <input type="text" id="num"><br>
	<button id="b1"> 정답 확인 </button>


</body>
</html>