<%-- session.jsp --%>
<%@page contentType="text/html;charset=euc-kr" session="true" %> <%-- 기본값 --%>
<HTML><HEAD><TITLE> Session 정보 </TITLE></HEAD>
<BODY>
<% session.setMaxInactiveInterval(2 * 60); %> <%-- 2분 --%>

<H2>Session 정보 </H2>

isNew():<%= session.isNew()%><BR>
getCreationTime(): <%= new java.util.Date(session.getCreationTime()) %><BR>
getLastAccessedTime(): <%= new java.util.Date(session.getLastAccessedTime()) %><BR>
getId()[세션 ID]: <%= session.getId() %><BR>
getMaxInactiveInterval() <%= session.getMaxInactiveInterval() %> 초 <BR>

</BODY>
</HTML>
