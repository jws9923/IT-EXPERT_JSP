<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<% response.setContentType("text/html;"); %>
<%-- namecard.xml 파일을 불러와 xdata 변수에 할당 --%>
<c:import url="namecard.xml" var="xmldata" />
<x:parse xml="${xmldata}" var="xdata"/>
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
