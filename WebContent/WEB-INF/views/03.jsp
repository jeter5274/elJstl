<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>파라미터</h1>
		<!-- http://localhost:8088/elJstl/03?id=you&pw=1111&name=%EC%9E%AC%EC%84%9D&num1=100&num2=200 -->
		
		<h2>자바문법 파라미터 값 꺼내 쓰기</h2>
		<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		//int num1 = Integer.parseInt(request.getParameter("num1"));
		//int num2 = Integer.parseInt(request.getParameter("num2"));
		%>
		
		id=<%=id %> <br>
		pw=<%=pw %> <br>
		name=<%=name %> <br>
		num1=<%=num1 %> <br>
		num2=<%=num2 %> <br>
		<br>
		
		<h2>el 파라미터 값 꺼내 쓰기</h2>
		id=${param.id} <br>
		pw=${param.pw} <br>
		name=${param.name} <br>
		num1=${param.num1} <br>
		num2=${param.num2} <br>
		<br>
		<br>
		sum = ${param.num1 + param.num2} <br>
		sum = ${param.num1} + ${param.num2} 실수 조심<br>
		
	</body>
</html>