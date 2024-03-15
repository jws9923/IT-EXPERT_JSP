<% response.setContentType("text/html"); %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<h3>반복</h3>
<h4>&lt;c:forEach></h4>

<c:forEach var="one" begin="1" end="10">
    <c:out value="${one}"/>
</c:forEach>
<p><b>header</b></p>
<c:forEach var="h" items="${header}">
    <c:out value="${h.key}:${h.value}"/><br>
</c:forEach>

<h4>&lt;c:forTokens></h4>
<c:forTokens var="one"
            items="서울|인천,대전,대구,부산,광주,평양"
            delims="," varStatus="sts">
    <c:out value="${sts.count}:${one}"/>&middot;
</c:forTokens>
<hr>
<c:forTokens var="one"
            items="서울|인천,대전,대구,부산,광주,평양"
            delims=",|" varStatus="sts">
    <c:out value="${sts.count}:${one}"/>&#149;
</c:forTokens>
