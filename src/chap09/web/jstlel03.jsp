<% response.setContentType("text/html;"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<c:if test="${!empty hit}">
    <c:set var="hit" value="${hit+1}" scope="session"/>
    <c:out value="${hit}"/> �� ���ε�Ǿ����ϴ�.
</c:if>
<c:if test="${empty hit}">
    <c:set var="hit" value="1" scope="session"/>
    ���ǿ� ���� �����߽��ϴ�.
</c:if>
<br>
<a href="jstlel03.jsp">reload</a>