<%-- session.jsp --%>
<%@page contentType="text/html;charset=euc-kr" session="true" %> <%-- �⺻�� --%>
<HTML><HEAD><TITLE> Session ���� </TITLE></HEAD>
<BODY>
<% session.setMaxInactiveInterval(2 * 60); %> <%-- 2�� --%>

<H2>Session ���� </H2>

isNew():<%= session.isNew()%><BR>
getCreationTime(): <%= new java.util.Date(session.getCreationTime()) %><BR>
getLastAccessedTime(): <%= new java.util.Date(session.getLastAccessedTime()) %><BR>
getId()[���� ID]: <%= session.getId() %><BR>
getMaxInactiveInterval() <%= session.getMaxInactiveInterval() %> �� <BR>

</BODY>
</HTML>
