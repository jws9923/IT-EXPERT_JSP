<% response.setContentType("text/html"); %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<h3>�ھ� </h3>
<h4>&lt;c:out></h4>
<pre>
${1+2} <c:out value="${1+2}"/>
${1>3} <c:out value="${1>3}"/>
${1 gt 3} <c:out value="${1 gt 3}"/>

${ ǥ�� <c:out value="${'${'}test}"/>

escapeXml �Ӽ�; �⺻���� true
false: <c:out value="<b>bold</b> <,>,&,',\" " escapeXml="false"/>
true:  <c:out value="<b>bold</b> <,>,&,',\" " escapeXml="true"/>

" ū����ǥ �������; ' ��������ǥ�� ��ġ
&lt;c:out value='&lt;font color="blue">�Ķ�&lt;/font>'/>
<c:out value='<font color="blue">�Ķ�</font>' escapeXml="false"/>

<hr><h4>&lt;c:set></h4>
set session scope var "name": <c:set var="name" value="�ϴ�" scope="session"/>
c:out name: <c:out value="${name}"/>
expression name: <%= session.getAttribute("name") %>

set page scope var "name": <c:set var="name">
  hello
</c:set>
c:out name: <c:out value="${pageScope.name}"/>
c:out sessionScope.name: <c:out value="${sessionScope.name}"/>
expression name: <%= session.getAttribute("name") %>

<hr><h4>&lt;c:remove></h4>
remove session scope var "name": <c:remove var="name" scope="session"/>
expression name: <%= session.getAttribute("name") %>
c:out sessionScope.name: <c:out value="${sessionScope.name}"/>

<hr><h4>&lt;c:catch></h4>
<c:catch var="errmsg">
line1
<%=1/0 %>
line2
</c:catch>
<c:out value="${errmsg}"/>
</pre>

