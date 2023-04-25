<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="com.javalab.el.User" %>

<%
	// request 기본 객체에 저장된 객체를 꺼낼 때는 형변환 필수! 저장시에는 setAttribute(), 꺼낼땐 getAttribute()
	User newUser = (User)request.getAttribute("newUser");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- table style sheet 
		#은 id의미-->
	<style>
		#tbl{
			width:50%
			border-collapse:collapse;
			text-align:center;
		}
		
		#tbl td, #tbl th{
			border:1px solid;
		}
		
		#tbl th{
			padding:5px;
		}
		
		#tbl tr:hover{
			background-color:#ddd;
		}
		</style>
	
<title>Insert title here</title>
</head>
<body>
	<h2><b>EL 표현식은 직접적으로 자바빈에 접근할 수 있다.</b></h2>
	
	<h3>1. EL 방식</h3>
	<table id="tbl">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<tr>
			<td>${user.getId()}</td>
			<th>${user.getPassword()}</th>
			<th>${user.getName()}</th>
			<th>${user.getEmail()}</th>
		</tr>
	</table>
	<br>
	<br>
	
	
	<h3>2. 기존 자바 표현식 방식</h3>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<tr>
			<td><%= newUser.getId() %></td>
			<td><%= newUser.getPassword()%></td>
			<td><%= newUser.getName()%></td>
			<td><%= newUser.getEmail()%></td>
		</tr>
	</table>
</body>
</html>