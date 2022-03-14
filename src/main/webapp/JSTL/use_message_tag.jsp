<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="en" />
<fmt:bundle basename="resource.message"> 
<!-- 접속한 클라이언트의 언어에 맞춰서 meesage파일 선택 -->
<fmt:message key="TITLE" var="title"/> 
<!-- 꺼내온 타이틀을 var에 저장 -->
<html>
<head><title>${title}</title></head>
<body>

<fmt:message key="GREETING" />
<br>
<c:if test="${! empty param.id}">
<!-- 파라미터로 전달된 값 id가 비어있지 않다면  -->
<fmt:message key="VISITOR">
    <fmt:param value="${param.id}" />
</fmt:message>
</c:if>

</body>
</html>
</fmt:bundle>
