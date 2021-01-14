<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>연산</h1>
		
		<h2>산술</h2>
		\${5+2} --> ${5+2} <br>
		\${5-2} --> ${5-2} <br>
		\${5*2} --> ${5*2} <br>
		<br>
		\${5/2} --> ${5/2} <br>
		<%-- \${5 div 2} --> ${5 div 2} <br> --%>
		<br>
		\${5%2} --> ${5%2} <br>
		\${5 mod 2} --> ${5 mod 2} <br>
		<br>

		<h2>관계형</h2>
		\${5>2} --> ${5>2} <br>
		\${5 gt 2} --> ${5 gt 2} <br>
		<br>
		\${5<2} --> ${5<2} <br>
		\${5 lt 2} --> ${5 lt 2} <br>
		<br>
		\${5>=2} --> ${5>=2} <br>
		\${5 ge 2} --> ${5 ge 2} <br>
		<br>
		\${5<=2} --> ${5<=2} <br>
		\${5 le 2} --> ${5 le 2} <br>
		<br>
		\${5==2} --> ${5==2} <br>
		\${5 eq 2} --> ${5 eq 2} <br>
		<br>
		\${5!=2} --> ${5!=2} <br>
		<%-- \${5 ne 2} --> ${5 ne 2} <br> --%>
		<br>

		<h2>조건</h2>
		\${5>2 ? 5 : 2} --> ${5>2 ? 5 : 2} <br> <%-- ${조건식 ? true일때 : false일때} --%>
		\${5>2 ? 2 : 5} --> ${5>2 ? 2 : 5} <br>
		<br>
	
		<h2>논리</h2>
		\${5>2}&&\${2>10} --> ${5>2}&&${2>10} (잘 못쓴 예) <br>
		\${5>2&&2>10} --> ${5>2&&2>10} <br>
		\${5>2||2>10} --> ${5>2||2>10} <br>
		\${!(5>2)} --> ${!(5>2)} <br>
		!${!(5>2)} (잘 못쓴 예) <br>
		<br>
	
		<h2>null검사</h2>
		\${empty str} --> ${empty str} <br>
		\${empty reqVal} --> ${empty reqVal} <br>
		
	</body>
</html>


