<%@ page pageEncoding="MS949" %>
<%
response.setHeader ("Pragma", "No-cache");
response.setDateHeader ("Expires", 0);
response.setHeader ("Cache-Control", "no-cache");

// request ���� �Ѿ���� �Ķ���Ϳ� �ϰ� ���ڵ��Ѵ�.
request.setCharacterEncoding("MS949");

// �Ķ���� "name" ���� �޾ƿ� name ������ �ִ´�.
// �Ķ���Ͱ� ���� ��� "" �� ��ġ�Ѵ�.
String name = request.getParameter("name");
if (name==null) name="";
%>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
�ȳ��ϼ���. <%= name %>!
<form method="post">
    <input type="text" name="name" value="<%= name %>">
    <input type="submit">
</form>