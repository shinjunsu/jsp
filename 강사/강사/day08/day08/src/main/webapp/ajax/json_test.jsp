<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Ajax를 이용해 실시간 순위 나타내기</h1>
	<table border="1">
		<tr>
			<th>실시간 검색 순위</th>
			<th>키워드</th>
		</tr>
		<tr>
			<td id="td1">순위</td>
			<td id="td2">키워드</td>
		</tr>
	</table>
	
	<script>
		// HTML이 load된 후 실행
		window.onload = function(){
			let obj = "";
			let word = new Array();
			let xhr = new XMLHttpRequest();
			xhr.open("GET", "data.json",true);
			xhr.send();
			xhr.onreadystatechange = function(){
				if( xhr.readyState == 4 ){
// 					alert(xhr.responseText);
					obj = JSON.parse(xhr.responseText);
					// 파싱된 obj에서 search_word라는 key를 가지고있는
					// 데이터를 꺼내보면 [{},{},{},{},{}] 가 나온다.
					/*
						JSON.parse(xhr.responseText) 
							= [object, object]
						JSON.parse(xhr.responseText).search_word
							= [{},{},{},{},{}]
					*/
// 					alert(obj.search_word[0].rank);
// 					alert(obj.search_word[0].name);

					for( let i = 0; i<obj.search_word.length; i++ ){
						word[i] = obj.search_word[i].name;
						// obj.search_word배열의 각방에는 또 json이
						// 담겨있다. {"rank":"name"}
						// name만 꺼내서 word라는 배열 안에 담아준다.
					}
				}				
			}
			
			let i = 0;
			// setInterval(함수, 밀리초) 
			let interval =  setInterval(function(){
				// JSON 안에있는 search_word 배열의 길이로 나눈 나머지는
				// 0, 1, 2, 3, 4 -> 5가되는순간 0이된다.
				i = i%obj.search_word.length;
				document.getElementById("td1").innerHTML = i + 1;
				document.getElementById("td2").innerHTML = word[i];
				i++;
			}, 2000);
			
			// setTimeout(함수, 밀리초)
			// : 해당 밀리초 이후에 앞에 넘겨준 함수를 호출
			setTimeout(function(){
				// clearInterval(인터벌)
				// : 해당 인터벌 삭제
				clearInterval(interval);
			}, 20000);
		}
	</script>
</body>
</html>














