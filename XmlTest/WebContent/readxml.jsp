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
	readxml();
});

function readxml(){

	$.ajax("${pageContext.request.contextPath}/readxml",
		{
		    dataType:"text",
		    type:"POST",
	        async:true,
	        success:function(xml){
	        	var id = $("id", xml).text();
	        	var name = $("name", xml).text();
	        	var author = $("author", xml).text();
	        	var tr = $("<tr align='center' />");
	            $("<td/>").html(id).appendTo(tr);
	            $("<td/>").html(name).appendTo(tr);
	            $("<td/>").html(author).appendTo(tr);
	            $("#booktable").append(tr);
	        },
	        error:function(){
	        	alert("数据接收失败");
	        }
		});
}					
</script>
</head>

<body>
<table id="booktable" border="1"  style="border-collapse: collapse;">
	<tr align="center">
	  <th>编号</th>
	  <th>书名</th>
	  <th>作者</th>
	</tr>
	
</table>
</body>
</html>