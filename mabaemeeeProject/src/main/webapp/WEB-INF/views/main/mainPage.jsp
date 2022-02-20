<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MabaemeeeCare</title>
<%@ include file="/0_src/_includeList/commonUI_M.jsp"%>

<%

	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh시 mm분 (E)", Locale.KOREAN);

%>

<style type="text/css">
	#segmentLineTwo {
		text-align: center;
	}
	
	#btn_power {
		margin-top: 14px;
	}
	
</style>

<script type="text/javascript">

function col_click(param) {
 	switch (param) {
	case 1:/* 온습도페이지 이동 */
		location.href = "/temPage"
		break;
	case 2:/* 조명페이지 이동 */
		location.href = "/lampPage"
		break;
	case 3:/* feeding페이지 이동 */
		location.href = "/feedingPage"
		break;
	}
}

</script>
</head>
<body onload="go_time()">
	
	<!-- 헤더 -->
	<%@ include file="/front/_includePage/header.jsp"%>
	<!-- 시간 설정 -->
	<jsp:include page="/front/_includePage/date.jsp" flush="true"/>
	
	<div class="ui container">
		<div class="ui raised segments">
			<div class="ui segment" id="clock">
			</div>
			<div class="ui segment" id="segmentLineTwo">
				<div class="ui four column doubling grid">
					<div class="column">
							조명 ON/OFF <br>
							<button class="massive ui circular icon inverted pink button" id="btn_power">
								<i class="power icon"></i>
							</button>
					</div>
					<div class="column" onclick="col_click(1);"  style="cursor:pointer;">
						현재 온도&습도 <br> <br> 온도 : <c:out value="${temp_hum.temp}"/>°C <br> 습도 : <c:out value="${temp_hum.hum}"/>% <br>
						
						
					</div>
					<div class="column" onclick="col_click(2);"  style="cursor:pointer;">
						조명 변경 시간 <br> <br> DAY : AM 07:00<br> NIGHT : PM 06:00<br>
					</div>
					<div class="column" onclick="col_click(3);"  style="cursor:pointer;">
						Feeding Day<br><br>
						매주 월/목
						<br>
						오늘은 Feeding Day입니다.
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>

</html>