<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试返回XML格式的数据</title>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	sendxml();
});

function sendxml(){
	var xmlData = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>"
                + "<book><id>1</id><name>疯狂Java讲义</name><author>李刚</author></book>" ; 
	$.ajax("${pageContext.request.contextPath}/sendxml",
		{
		    type:"POST",
	        contentType:"application/xml",
	        data:xmlData,
	        async:true,
		});
}					
</script>
</head>

<body>

</body>
</html>