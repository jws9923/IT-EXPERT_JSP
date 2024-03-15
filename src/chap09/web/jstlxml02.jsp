<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<% response.setContentType("text/html;"); %>
<%-- namecard.xml ������ �ҷ��� xdata ������ �Ҵ� --%>
<c:import url="namecard.xml" var="xmldata" />
<x:parse xml="${xmldata}" var="xdata"/>
<%-- XPath �� �̿��ؼ� xdata���� ���� --%>
<x:out select="$xdata//person[1]/name"/>
<x:out select="$xdata//person[last()]/name"/>
<hr>
<%-- person ���� �ݺ��ؼ� email�� phone ��� --%>
<table border="1">
<x:forEach select="$xdata//person">
<tr><td><x:out select="email" /></td>
<td><x:out select="phone" /></td></tr>
</x:forEach>
</table>
