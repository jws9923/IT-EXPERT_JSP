<%-- bind_logout.jsp --%>
<%@ page contentType="text/html;charset=euc-kr"%>
<%
	session.invalidate();
	response.sendRedirect("bind_login.jsp");
%>
