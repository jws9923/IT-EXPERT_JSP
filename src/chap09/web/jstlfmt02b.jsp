<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<% response.setContentType("text/html;"); %>
�Ķ����:<c:out value="${param.id}"/>
<form method="post">
    <input type="text" name="id">
    <input type="submit">
</form>