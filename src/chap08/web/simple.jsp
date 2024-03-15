<%@ page pageEncoding="MS949" %>
<%
response.setHeader ("Pragma", "No-cache");
response.setDateHeader ("Expires", 0);
response.setHeader ("Cache-Control", "no-cache");

// request 에서 넘어오는 파라메터에 일괄 인코딩한다.
request.setCharacterEncoding("MS949");

// 파라메터 "name" 값을 받아와 name 변수에 넣는다.
// 파라메터가 없을 경우 "" 로 대치한다.
String name = request.getParameter("name");
if (name==null) name="";
%>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
안녕하세요. <%= name %>!
<form method="post">
    <input type="text" name="name" value="<%= name %>">
    <input type="submit">
</form>