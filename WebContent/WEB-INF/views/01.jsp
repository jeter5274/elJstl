<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>데이터 타입</h1>
		
		<!-- 서블릿에서 넘어온 값들을 표현할 때 사용한다. 간결해진다. -->
		정수형: ${10} <br>
		실수형: ${7.5} <br>
		문자열: ${"정우성"} <br> <!-- 작은 따옴표도 가능 -->
		논리형: ${true} <br>
		null: ${null} <br>
		
		예제: ${name} <!-- name 변수에 값을 할당하지 않아 null로 표시 -->
		
	</body>
</html>