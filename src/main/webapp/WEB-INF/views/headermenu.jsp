<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>TestTBL</title>
	<style type="text/css">
		.header {
			padding-top:100px;
			height:300px;
			text-align:center;
			font-size:18px;
		}
		form{
			display:inline;
		}
		.loc-order {
			width:25px;
			height:25px;
		}
		form label {
			width: 40px;
			display: block;
			float: left;
		}
		form .clear {
			clear:both;
		}
		.input-inline {
			display:inline-block;
		}
		span {
			margin:0 20px;
		}
	</style>
</head>
<body>
<script type="text/javascript">
	function sendData() {
		document.frameForm.target="formTest";
		document.frameForm.action="testtable";
		document.frameForm.submit();
	}
</script>
<div class="header" style="padding-top:100px; height: 200px; text-align:center; font-size: 18px;">
<form name="frameForm"  method="post">
<div class="header-fir">
	<p>
	<select name="location" style="width:100px;margin-right:50px;">
		<option value="" selected>전체</option>
			<option value="10">서울</option>
			<option value="20">부산</option>	
			<option value="30">광주</option>	
			<option value="40">대전</option>	
			<option value="60">인천</option>	
			<option value="70">아산</option>	
	</select>
	정렬 : 
	서울 <input class="loc-order" type="text" name="ord1"> 
	부산 <input class="loc-order" type="text" name="ord2">
	광주 <input class="loc-order" type="text" name="ord3">
	대전 <input class="loc-order" type="text" name="ord4">
	인천 <input class="loc-order" type="text" name="ord6"> 
	아산 <input class="loc-order" type="text" name="ord7">
	</p>
	<p>
	<div class="input-inline">
		<span>건수
		<input type="text" name="cnt" style="width:150px;height:25px;">
		</span>
		<span>우선순위 :
		<input type="radio" name="dir" value="F" checked>데이터우선
		<input type="radio" name="dir" value="R">총계우선
		</span>
		<span>보기레벨 :
		<input type="radio" name="lvl" value="1" checked>전체
		<input type="radio" name="lvl" value="2">1단계
		<input type="radio" name="lvl" value="3">2단계
		</span>
		<span>
		<input type="button" onclick="javascript:sendData();" value="검색">
		</span>
	</div>
</div>
</form>
</div>
<iframe width="100%" height="600px" scrolling="auto" name="formTest" src="testtable"></iframe>
</body>
</html>