<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<% %>
<script type="text/javascript">
	  var list = new Array;
	  
	  <c:forEach items="${chart}" var="item">
	  	list.push("${item.nm}");
	  	list.push("${item.tot}"*1);
	  </c:forEach>
	  
	  	var dataList = [
	  		[list[0], list[1]],
	  		[list[2], list[3]],
	  		[list[4], list[5]],
	  		[list[6], list[7]],
	  		[list[8], list[9]],
	  		[list[10], list[11]],
	  		[list[12], list[13]],
  		];
  		  	
	  	
	  	console.log(dataList);
	  	
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
	      var data = google.visualization.arrayToDataTable([
	          ['local', 'total', { role: 'style' }], 
	          [list[0], list[1], '#C39BD3'],
	          [list[2], list[3], '#F5B7B1'],
	          [list[4], list[5], '#FAD7A0'],
	          [list[6], list[7], '#F7DC6F'], 
	          [list[8], list[9], '#5DADE2'],
	          [list[10], list[11], '#82E0AA'], 
	          [list[12], list[13], '#E74C3C']
	       ]);
	      var options = {
	    	        title: "Column Chart",
	    	        width: 800,
	    	        height: 400,
	    	        bar: {groupWidth: "85%"},
	    	        legend: { position: "none" },
	    	        fontSize:12,
	    	        vAxis: {
	    	        	viewWindowMode:'explicit',
	    	        	viewWindow: {
	    	        		max:4500000,
	    	        		min:0
	    	        	}
	    	        }
	    	      };
	      var chart = new google.visualization.ColumnChart(document.getElementById("chart_div"));
	      chart.draw(data, options);
    	}
      
      google.charts.setOnLoadCallback(drawLineChart);
      function drawLineChart() {
    	  var data = google.visualization.arrayToDataTable([
	          ['local', 'total', { role: 'style' }], 
	          [list[0], list[1], '#C39BD3'],
	          [list[2], list[3], '#F5B7B1'],
	          [list[4], list[5], '#FAD7A0'],
	          [list[6], list[7], '#F7DC6F'], 
	          [list[8], list[9], '#5DADE2'],
	          [list[10], list[11], '#82E0AA'], 
	          [list[12], list[13], '#E74C3C']
	       ]);
    	  
    	  var options = {
    			  title: "Line Chart",
    			  legend: 'none',
    			  hAxis: {minValue:0, maxValue:4500000},
    			  pointSize:20,
    			  fontSize:12
    	  };
    	  
    	  var chart = new google.visualization.LineChart(document.getElementById('line_div'));
          chart.draw(data, options);
      }
      
</script>
<body style="text-align:center;">
<div id="chart_div"></div>
<div id="line_div"></div>
</body>
</html>