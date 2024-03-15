<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<pre><fmt:setLocale value="ko_KR"/>
<jsp:useBean id="now" class="java.util.Date"/>

default: <c:out value="${now}"/>
Korea   KST  : <fmt:formatDate value="${now}" type="both" dateStyle="full"
                   timeStyle="full"/>
<fmt:timeZone value="GMT">
Swiss   GMT  : <fmt:formatDate value="${now}" type="both" dateStyle="full"
                   timeStyle="full"/>
</fmt:timeZone>
<fmt:timeZone value="GMT-8">
NewYork GMT-8: <fmt:formatDate value="${now}" type="both" dateStyle="full"
                   timeStyle="full"/>
</fmt:timeZone>
</pre>