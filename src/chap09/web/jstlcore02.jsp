<% response.setContentType("text/html"); %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<h3>����</h3>
�Ķ���� ����:<c:out value="${empty param.name}" />
<h4>&lt;c:if test=""></h4>
<c:if test="${empty param.name}">
<form>
�̸��� �����ּ���.<br>
    <input type="text" name="name">
    <input type="submit" value="Ȯ��">
</form>
</c:if>
<c:if test="${!empty param.name}">
    �ȳ��ϼ���. <c:out value="${param.name}"/>��.
</c:if>

<h4>&lt;c:choose> &ltc:when test=""> &ltc:otherwise></h4>
<c:choose>
    <c:when test="${empty param.name}">
        <form>
        �̸��� �����ּ���.<br>
            <input type="text" name="name">
            <input type="submit" value="Ȯ��">
        </form>
    </c:when>
    <c:when test="${param.name=='admin'}">
        �ȳ��ϼ���. �����ڴ�.
    </c:when>
    <c:otherwise>
        �ȳ��ϼ���. <c:out value="${param.name}"/>��.
    </c:otherwise>
</c:choose>
