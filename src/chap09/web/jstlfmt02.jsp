<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="euc-kr"/>
파라메터:<c:out value="${param.id}"/>
<form method="post">
    <input type="text" name="id">
    <input type="submit">
</form>