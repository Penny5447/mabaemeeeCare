<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

function go_time(){
	 
	 var now = new Date();
	 
	 const formatDate = (current_datetime)=>{
		    let formatted_date = current_datetime.getFullYear() + "년 " + 
		     					(current_datetime.getMonth() + 1) + "월 " + 
		     					 current_datetime.getDate() + "일 " + 
		     					 current_datetime.getHours() + "시 " + 
		     					 current_datetime.getMinutes() + "분" ;
		    return formatted_date;
	}
	 
	 
	 document.getElementById("clock").innerHTML = formatDate(now);
     //id가 clock인 html에 현재시각을 넣음
	 
	 setTimeout("go_time()", 1000);
	 //1초마다 해당 펑션을 실행함.
	}


</script>
</head>
</html>