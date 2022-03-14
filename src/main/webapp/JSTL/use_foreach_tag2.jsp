<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="jstl.day0314.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
ArrayList<Member> list = new ArrayList<>(); //제네릭
//'데이터 형식에 의존하지 않고, 하나의 값이 여러 다른 데이터 타입들을 가질 수 있도록 하는 방법'이다.
//우리가 흔히 쓰는 ArrayList, LinkedList 등...

list.add(new Member("자바킴", 10));
list.add(new Member("오라클킴", 20));
list.add(new Member("스프링킴", 30));
list.add(new Member("파이썬킴", 40));

request.setAttribute("mList", list);
%>
<html>
<head><title>list 출력</title></head>
<body>
<table border="1">
	<tr><th>name</th><th>age</th></tr>
	<c:forEach items="${mList}" var="mem">
	<tr><td>${mem.name}</td><td>${mem.age}</td></tr>
</c:forEach>
	

</table>


</body>
</html>