<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feeding Day 변경 설정</title>
<script type="text/javascript">
	function btn_up() {
        var url = "pop_feedUpdate";
        var name = "feedUpdate";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
	}
	function btn_del() {
        var url = "pop_feedDelete";
        var name = "feedDelete";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no"
        window.open(url, name, option);
	}
</script>

<style type="text/css">
	#text {
		text-align: right;
	    padding-top: 20px;
	}
</style>


<%@ include file="/0_src/_includeList/commonUI_M.jsp"%>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="/front/_includePage/header.jsp"%>
	<!-- 헤더 -->
	
	<div class="ui container">
		<div class="ui grid">
	        <div class="left floated six wide column">
	          <div>
	            <h1>&lt; Feeding Day &gt;</h1>
		      </div>
	        </div>
	        <div class="right floated six wide column">
	          <div id="text">
	            2021년 12월 16일 목요일 PM 3:45
	          </div>
	        </div>
	    </div>
		<div class="ui horizontal segments">
			<div class="ui center aligned segment">
				현재 내역 조회
			</div>
			<div class="ui center aligned segment">
				<div class="ui buttons">
					<button class="ui positive button" onclick="btn_up();">변경</button>
					<div class="or"></div>
					<button class="ui button" onclick="btn_del();">삭제</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>