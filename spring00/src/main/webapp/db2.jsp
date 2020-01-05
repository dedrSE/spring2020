<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
/* 스크립트릿 */

/* control하는 부분 : Control */
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");


/* db처리하는 특별한 부분 : 방법이 정해져 있음 (4단계) : Model */
//db 처리 4단계
//1. connector 설정

Class.forName("com.mysql.jdbc.Driver");
out.print("1. connector 설정 Ok...<br>");

//2. db연결

String url = "jdbc:mysql://localhost:3308/spring";
String user = "root";
String password = "1234";

Connection con = DriverManager.getConnection(url, user, password);
out.print("2. db 연결 Ok...<br>");

//3. sql문 객체화

String sql = "insert into member values (?, ?, ?, ?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, pw);
ps.setString(3, name);
ps.setString(4, tel);

out.print("3. sql문 객체화 Ok...<br>");

//4, sql문 db로 전송
ps.executeUpdate();

/* 처리 결과를 보여주는 부분 : View */
out.print("4. sql문 db로 전송 연결 Ok...<br>");
%>
</body>
</html>

