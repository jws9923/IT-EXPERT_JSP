<%-- logout.jsp --%>
<%@page session="false" contentType="text/html;charset=euc-kr" %>
<%
	HttpSession session = request.getSession(false);
	String name = "";
	if(session != null) {
		name = (String)session.getAttribute("login.name");
		session.invalidate();
	}
%>
<H3> <%=name%> 로그아웃 처리 되었습니다.</H3>

...
<A HREF="showinfo.jsp"> 로긴 정보 보기</A>
...
