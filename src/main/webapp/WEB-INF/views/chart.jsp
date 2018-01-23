<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<!-- load ajax api -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	  var list = new Array();
	  
	  <c:forEach items="${chart}" var="item">
	  	list.push("${item.REGION_AREA}");
	  	list.push("${item.tot}")
	  </c:forEach>
	  	
	  	console.log(list);
	  	
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
      
      var data = new google.visualization.DataTable();
      
      /* function drawChart() {

          // Create the data table.
           data.addColumn('string', 'Topping');
          data.addColumn('number', 'Slices');
          data.addRows([
            ['Mushrooms', 3],
            ['Onions', 1],
            ['Olives', 1],
            ['Zucchini', 1],
            ['Pepperoni', 2]
          ]); */

</script>
<body>
<div>
	  <c:forEach items="${chart}" var="chart">
	  	<table class="table">
	  		<tr>
	  			<th>${chart.location}</th>	
  			</tr>
  			<tr>
  				<td>${chart.tot}</td>
  			</tr>
	  	</table>
	  </c:forEach>
</div>
</body>
</html>