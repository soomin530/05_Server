<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입 결과</title>
</head>
<body>
	<h1>회원 가입 결과 페이지 입니다</h1>

	<h3>입력되어 전달된 값들</h3>
	<ul>
		<li>ID : <%=request.getParameter("inputId")%>
		</li>
		<li>PW : <%=request.getParameter("inputPw")%>
		</li>
		<li>확인 : <%=request.getParameter("inputPwCheck")%>
		</li>
		<li>이름 : <%=request.getParameter("inputName")%>
		</li>
		<li>나이 : <%=request.getParameter("inputAge")%>
		</li>
	</ul>


	<%-- JSP 스크립틀릿 사용 시 --%>
	<%
	String pw = request.getParameter("inputPw");
	String check = request.getParameter("inputPwCheck");

	// 비밀번호가 일치하는 경우
	if (pw.equals(check)) { 
	%>

	<h1 style="color: green;">가입 성공</h1>

	<% } else { %>

	<h1 style="color: red;">비밀번호 불일치</h1>
	
	<% } %>

	<!-- JSTL 사용 시 : 비밀번호가 일치하는 경우 -->
	<c:if test="${param.inputPw == param.inputPwCheck}">
		<h1 style="color: green;">가입 성공</h1>
	</c:if>

	<!-- JSTL 사용 시 : 비밀번호가 일치하지 않는 경우 -->
	<c:if test="${param.inputPw != param.inputPwCheck}">
		<h1 style="color: red;">비밀번호 불일치</h1>
	</c:if>




</body>
</html>