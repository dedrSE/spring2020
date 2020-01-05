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
		$("#num").keyup(function() {
			//입력한 값을 가지고 옴 -> input 태그인 경우 val()함수 사용 넣을때도 사용
			num = $("#num").val()
			//타겟과 입력한 값이 동일한지 체크
			if(num==target) {
				/* alert("you're right!") */
				//$("#d1").html("<font color=blue>정답</font><br>")
				$("#d1").append("<font color=blue>정답</font><br>")
			}else {
				/* alert("you're wrong!!!") */
				//$("#d1").html("<font color=red>오답</font><br>")
				$("#d1").append("<font color=red>오답</font><br>")
			
			
			}
		})
		
		
		
	})


</script>
</head>
<body>
	생각하고 있는 정답 입력 :  <input type="text" id="num"><br>
	<div id="d1"></div>

</body>
</html>