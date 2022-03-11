<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %> <!-- =>불필요한 빈줄제거 -->
<!-- text/xml
application/json -->
<!DOCTYPE html>
<html>
<head>
<title>현재시간</title>
</head>
<body>
<!-- html주석 -->
<%-- jsp주석. 확장자가 jsp인 경우에만 사용 가능!--%>
<% 
Date now = new Date();
%>
현재 시간 : <%= now %> 
</body>
</html>