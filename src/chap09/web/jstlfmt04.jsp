<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="ko"/>
<fmt:setBundle var="testBundle"
    basename="itexpert.chap09.msg.TestBundle"/>

<fmt:message bundle="${testBundle}" key="greeting"/><br>
<fmt:message bundle="${testBundle}" key="admin"/><br>
