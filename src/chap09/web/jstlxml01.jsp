<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<% response.setContentType("text/html;"); %>
<%-- 파라메터 받아서 출력 --%>
<c:if test="${!empty param.name}">
param: <x:out select="$param:name"/>
</c:if>
<form>
name: <input type="text" name="name">
<input type="submit">
</form>
<hr>
<%-- xml 데이터를 xdata 변수에 할당 --%>
<x:parse var="xdata">
<namecard>
    <person>
        <name>허광남</name>
        <id>남자</id>
        <email>kenu@email.com</email>
        <phone>111-2222-3333</phone>
    </person>
    <person>
        <name>노재춘</name>
        <id>남자</id>
        <email>suribada@email.com</email>
        <phone>222-3333-4444</phone>
    </person>
    <person>
        <name>이선재</name>
        <id>남자</id>
        <email>hsboy@email.com</email>
        <phone>333-4444-5555</phone>
    </person>
</namecard>
</x:parse>
<%-- XPath 를 이용해서 xdata에서 추출 --%>
<x:out select="$xdata//person[1]/name"/>
<x:out select="$xdata//person[last()]/name"/>
<hr>
<%-- person 으로 반복해서 email과 phone 출력 --%>
<table border="1">
<x:forEach select="$xdata//person">
<tr><td><x:out select="email" /></td>
<td><x:out select="phone" /></td></tr>
</x:forEach>
</table>
