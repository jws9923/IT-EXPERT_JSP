<% response.setContentType("text/html;"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="c_rt" uri="http://java.sun.com/jstl/core_rt" %>
<% String[] abc = {"»¡°­","ÆÄ¶û","³ë¶û"}; %>

<c:set var="t" value="hello"/>
<c_rt:set var="color" value="<%=abc%>"/>

<h3>pageScope</h3>
<c:forEach items="${pageScope}" var="h">
    <c:out value="${h}"/><br/>
</c:forEach>

<h3>colors</h3>
<c:forEach items="${color}" varStatus="i">
    <c:out value="${i.count}"/>.
    <c:out value="${color[i.index]}"/><br/>
</c:forEach>

