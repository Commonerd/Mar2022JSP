<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="el.day0314.Thermometer"%> %>

<% 
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>

<!DOCTYPE html>
<html>
<head>
<title>온도 변환</title>
</head>
<body>
	${t.setCelsius('서울', 10.3)}
	서울 온도 : 섭씨 ${t.getCelsius('서울')} /화씨 ${t.getFahrenheit('서울')}
	<br>
	${ t.info } <!-- //변수명이 저장되어 있지만, 변수의 게터를 호출한다. -->
</body>
</html>