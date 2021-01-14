<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="vo.UserVo" %>
	
<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<div id="header">
				<h1>MySite</h1>
				<ul>
			<%
				if(authUser==null) {
			%>
					<!-- 로그인 전 -->
					<li><a href="/mysite/user?a=loginform">로그인</a></li>
					<li><a href="/mysite/user?a=joinform">회원가입</a></li>
			<%  }else { %>		
					<!-- 로그인 후 -->
					<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
					<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
					<li> <%=authUser.getName() %>님 안녕하세요^^;</li>
			<%  } %>
				</ul>
		</div>
		
		<div id="header">
		
			<h1>MySite</h1>
			
			<ul>
			
			<c:choose>
				<c:when test="${empty authUser}">	<!-- null이면 -->
				<!-- ${sessionScope.authUser == null}" 나
			 	${sessionScope.authUser eq null}" 도 가능 -->
					<!-- 로그인 전 -->
					<li><a href="/mysite/user?a=loginform">로그인</a></li>
					<li><a href="/mysite/user?a=joinform">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<!-- 로그인 후 -->
					<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
					<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
					<li> ${sessionScope.authUser.name}님 안녕하세요^^;</li>
					<li> ${authUser.name}님 안녕하세요^^;</li>
				</c:otherwise>
			</c:choose><!-- /header -->
			 
			</ul>
		</div>
	</body>
</html>