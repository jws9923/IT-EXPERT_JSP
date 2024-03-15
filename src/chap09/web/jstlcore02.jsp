<% response.setContentType("text/html"); %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<h3>조건</h3>
파라메터 없음:<c:out value="${empty param.name}" />
<h4>&lt;c:if test=""></h4>
<c:if test="${empty param.name}">
<form>
이름을 적어주세요.<br>
    <input type="text" name="name">
    <input type="submit" value="확인">
</form>
</c:if>
<c:if test="${!empty param.name}">
    안녕하세요. <c:out value="${param.name}"/>님.
</c:if>

<h4>&lt;c:choose> &ltc:when test=""> &ltc:otherwise></h4>
<c:choose>
    <c:when test="${empty param.name}">
        <form>
        이름을 적어주세요.<br>
            <input type="text" name="name">
            <input type="submit" value="확인">
        </form>
    </c:when>
    <c:when test="${param.name=='admin'}">
        안녕하세요. 관리자님.
    </c:when>
    <c:otherwise>
        안녕하세요. <c:out value="${param.name}"/>님.
    </c:otherwise>
</c:choose>
