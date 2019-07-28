<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
<meta contentType="text/html; charset="UTF-8"/>
<link href="<c:url value="/resources/style2.css" />" type="text/css" rel="stylesheet">
<title>Welcome</title>
</head>

<body>
<div class="dataT">
<h1>blaaaaaaaaaaaaaaaaaaaaaaaa</h1>
		<h1>All lotto numbers that has been drawn</h1>
			<table>
			<tr>
				<th>id</th>
				<th>év</th>
				<th>hét</th>
				<th>dátum</th>
				<th>1. winning numbers (by machine)</th>
				<th>2. winning numbers (by hand)</th>
			</tr>
			<c:forEach var="numbers" items="${allRecord}">
				<tr>
					<td>${numbers.id}</td>
					<td>${numbers.year}</td>
					<td>${numbers.week}</td>
					<td>${numbers.date}</td>
					<td>empty</td>
					<td>empty</td>
				</tr>
			</c:forEach>
			</table>
</div>

</body>
