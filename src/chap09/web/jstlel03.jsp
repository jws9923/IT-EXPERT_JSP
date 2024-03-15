<% response.setContentType("text/html;"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<c:if test="${!empty hit}">
    <c:set var="hit" value="${hit+1}" scope="session"/>
    <c:out value="${hit}"/> 번 리로드되었습니다.
</c:if>
<c:if test="${empty hit}">
    <c:set var="hit" value="1" scope="session"/>
    세션에 값을 저장했습니다.
</c:if>
<br>
<a href="jstlel03.jsp">reload</a>