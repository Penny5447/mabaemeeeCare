<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>온습도</title>
<%@ include file="/0_src/_includeList/commonUI_M.jsp"%>

<%

	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh시 mm분 (E)", Locale.KOREAN);

%>


<style type="text/css">
	#text {
		text-align: right;
	    padding-top: 20px;
	}
</style>


</head>
<body onload="go_time()">
	<!-- 헤더 -->
	<%@ include file="/front/_includePage/header.jsp"%>
	
	<!-- 시간 설정 -->
	<jsp:include page="/front/_includePage/date.jsp" flush="true"/>
	
	<div class="ui container">
		<div class="ui grid">
	        <div class="left floated six wide column">
	          <div>
	            <h1>&lt; 온습도 내역 &gt;</h1>
		      </div>
	        </div>
	        <div class="right floated six wide column">
	          <div id="text">
	          	<div id="clock"></div>
	          </div>
	        </div>  
	    </div>
		<div class="ui horizontal segments">
			<div class="ui center aligned segment">
				당일 시간대별 내역
				<br>
				<table class="ui pink table">
				  <thead>
				    <tr align="center">
				    	<th>시간</th>
				    	<th>온도</th>
				    	<th>습도</th>
				  	</tr>
				  </thead>
				</table>
			</div>
			<div class="ui center aligned segment">
			</div>
				<div style="width:800px">
				    <canvas id="myChart"></canvas>
				</div>
		</div>
	</div>
</body>

<script>








// 우선 컨텍스트를 가져옵니다. 
var ctx = document.getElementById("myChart").getContext('2d');
/*
- Chart를 생성하면서, 
- ctx를 첫번째 argument로 넘겨주고, 
- 두번째 argument로 그림을 그릴때 필요한 요소들을 모두 넘겨줍니다. 
*/
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>
</html>