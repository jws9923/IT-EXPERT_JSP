<% response.setContentType("text/html"); %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<c:set var="url" value="http://www.google.co.kr/"/>
<c:import url="${url}" var="u"/>
<c:out value="${url}"/> 가져옵니다.
<hr>
<base href="<c:out value="${url}"/>">
    <c:out value="${u}" escapeXml="false"/>
</base>
<hr>

<c:set var="url" value="http://www.okjsp.pe.kr"/>
<c:import url="${url}" var="u"/>
<c:out value="${url}"/> 가져옵니다.
<hr>
<pre><c:out value="${u}"/></pre>
<hr>

<c:set var="url" value="ftp://ftp.dacom.co.kr"/>
<c:import url="${url}" var="u"/>
<c:out value="${url}"/> 가져옵니다.
<hr>
<pre><c:out value="${u}"/></pre>
<hr>

<c:set var="url" value="jstlcore02.jsp"/>
<c:import url="${url}" var="u">
    <c:param name="name" value="admin"/>
</c:import>
<c:out value="${url}"/> 가져옵니다.
<hr>
<c:out value="${u}" escapeXml="false"/>
<hr>