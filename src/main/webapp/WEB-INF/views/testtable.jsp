<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- jquery -->
<script src="//code.jquery.com/jquery.min.js"></script>
<!-- bootstrap cdn -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- java script -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>table</title>
<style type="text/css">
.table-condensed {
	font-size:10px;
}
</style>
</head>
<body>
<script type="text/javascript">
</script>
<% 
	Object rTime = request.getAttribute("time");
%>
<div>
	<form action="chart.jsp" method="post"></form>
</div>
<div>
	<h2 style="text-align:center;">소요시간 : <span style="color:red"><%=rTime %> sec</span></h2>
	<table id="value-table" class="table table-condensed">
		<thead>
		<tr style="background-color:Gold;">
			<th>NAME</th>
			<th>안마기</th>
			<th>냉장고</th>
			<th>TV</th>
			<th>오디오</th>
			<th>전화기</th>
			<th>에어컨</th>
			<th>전자렌지</th>
			<th>카메라</th>
			<th>김치냉장고</th>
			<th>세탁기</th>
			<th>TOT</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="result" items="${list}">
			<c:set var="nm" value="${result.nm}"/>
			<c:choose>
			<c:when test="${fn:contains(nm,'합계')}">
				<tr style="background-color:GreenYellow">
					<td>${result.nm}</td>
					<td>${result.col1}</td>
					<td>${result.col2}</td>
					<td>${result.col3}</td>
					<td>${result.col4}</td>
					<td>${result.col5}</td>
					<td>${result.col6}</td>
					<td>${result.col7}</td>
					<td>${result.col8}</td>
					<td>${result.col9}</td>
					<td>${result.col10}</td>
					<td>${result.tot}</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td>${result.nm}</td>
					<td>${result.col1}</td>
					<td>${result.col2}</td>
					<td>${result.col3}</td>
					<td>${result.col4}</td>
					<td>${result.col5}</td>
					<td>${result.col6}</td>
					<td>${result.col7}</td>
					<td>${result.col8}</td>
					<td>${result.col9}</td>
					<td>${result.col10}</td>
					<td>${result.tot}</td>
				</tr>
				</c:otherwise>
				</c:choose>
		</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>