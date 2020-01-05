<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function call1() {
	alert("1번 호출됨")
	console.log("1번 호출")
}
function call2() {
	alert("2번 호출됨.")
	console.log("2번 호출")
}
/* call1() */
/* 3번 함수는 두 단어를 입력받아서 하나로 프린트 */
function call3() {
	word1 = prompt("1번째 단어를 입력하세요")
	word2 = prompt("2번째 단어를 입력하세요")
	alert(word1 + word2)
}
/* 4번 함수는 두 숫자를 더해서 프린트 */
function call4() {
	int1 = prompt("1번째 숫자를 입력하세요")
	int2 = prompt("2번째 숫자를 입력하세요")
	w1 = parseInt(int1)
	w2 = parseInt(int2)
	alert(w1+w2)
}

</script>
</head>
<body>
<button type="button" onclick="call1()">1번 함수 호출</button>
<button type="button" onclick="call2()">2번 함수 호출</button>
<button type="button" onclick="call3()">3번 함수 호출</button>
<button type="button" onclick="call4()">4번 함수 호출</button>




</body>
</html>