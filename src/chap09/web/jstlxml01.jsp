<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<% response.setContentType("text/html;"); %>
<%-- �Ķ���� �޾Ƽ� ��� --%>
<c:if test="${!empty param.name}">
param: <x:out select="$param:name"/>
</c:if>
<form>
name: <input type="text" name="name">
<input type="submit">
</form>
<hr>
<%-- xml �����͸� xdata ������ �Ҵ� --%>
<x:parse var="xdata">
<namecard>
    <person>
        <name>�㱤��</name>
        <id>����</id>
        <email>kenu@email.com</email>
        <phone>111-2222-3333</phone>
    </person>
    <person>
        <name>������</name>
        <id>����</id>
        <email>suribada@email.com</email>
        <phone>222-3333-4444</phone>
    </person>
    <person>
        <name>�̼���</name>
        <id>����</id>
        <email>hsboy@email.com</email>
        <phone>333-4444-5555</phone>
    </person>
</namecard>
</x:parse>
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
