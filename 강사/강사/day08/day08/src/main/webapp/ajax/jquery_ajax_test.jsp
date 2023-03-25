<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<input type="button" value="jquery_get" onclick="get()">
	<input type="button" value="jquery_post" onclick="post()">
	<script>
		function get(){
			$.ajax({
		       type: "GET",
		       url: "data.json",
		       dataType: "json",
		       contentType : "application/x-www-form-urlencoded;charset=UTF-8",
		       error: function() {
		         console.log('통신실패!!');
		       },
		       success: function(data) {
		    	   	console.log("get data : " + data);
		         	console.log("get data.search_word : " + data.search_word);
		         	console.log("get data rank : " + data.search_word[0].rank);
		         	console.log("get data name : " + data.search_word[0].name);
		       }
			});
			
		}
		
		function post(){
		    $.ajax({
		        type : 'post',
		        url : 'data.json',
			    dataType: "json",
		        contentType : "application/json; charset=utf-8",
		       	error: function() {
			         console.log('통신실패!!');
		        },
		        success: function(data) {
		         	console.log("post data : " + data);
		         	console.log("post data.search_word : " + data.search_word);
		         	console.log("post data rank : " + data.search_word[0].rank);
		         	console.log("post data name : " + data.search_word[0].name);
		       	}
			  });
			
			
		}
	
	</script>

</body>
</html>
