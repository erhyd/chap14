<%@page import="com.example.domain.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>listall.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>직원리스트</h1>
<%
	List<Emp> list = (List<Emp>)request.getAttribute("emps");
	
	for (Emp e : list) {
%>
	<%=e.getEmpno()%>, <%=e.getEname()%><br>
<%
	}
%>
<hr>
<div class="container">
<h1>EMP table</h1>
<table class="table table-striped">
	<thead>
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>hiredate</th>
			<th>sal</th>
			<th>comm</th>
			<th>deptno</th>
		</tr>
	</thead>
<tbody>
	<c:forEach var="e" items="${emps}">
			<tr>
				<td>${e.empno}</td>
				<td>${e.ename}</td>
				<td>${e.hiredate}</td>
				<td>${e.sal}</td>
				<td>${e.comm}</td>
				<td>${e.deptno}</td>
			</tr>
	</c:forEach>
</tbody>
</table>
</div>
</body>
</html>