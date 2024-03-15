<%-- attribute.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="java.util.Enumeration" %>
<HTML><HEAD><TITLE>영역과 속성</TITLE></HEAD>
<BODY>
<H2>영역 객체의 속성을 알아 봅시다.</H2>
<B>Session Scope:</B><BR>
<%	/* 세션 영역에 지정된 속성 이름들을 얻는다. session.getAttrubuteNames()와 동일 */
	Enumeration enum = pageContext.getAttributeNamesInScope(PageContext.SESSION_SCOPE);
/* 현재 페이지 세션 영역에 저장된 모든 속성의 이름과 속성 객체를 얻는다. */
	while(enum.hasMoreElements()) {
		String name = (String)enum.nextElement();
		out.print(name + ": " + pageContext.getAttribute(name, PageContext.SESSION_SCOPE));
		out.print("<BR>");
	}
%>
<P>
<B>Application Scope:</B><BR>
<% 	/* application 영역에 지정된 속성 이름들을 얻는다. application.getAttrubuteNames()와 동일 */
	enum = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE);
	/* 현재 페이지 application 영역에 저장된 모든 속성의 이름과 속성 객체를 얻는다. */
	while(enum.hasMoreElements()) {
		String name = (String)enum.nextElement();
		out.print(name + ": " +
		pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE));
		out.print("<BR>");
	}
%>
<HR>
<%
	/* 전달된 요청 파라미터 name이 있는 경우 이를 'name'이라는 이름의 String 속성으로 설정한다. 
	요청 파라미터로 'name'이 전달되지 않은 경우 'name' 속성을 'guest'로 설정한다. */
	if(session.isNew()) {
		String name = request.getParameter("name");
		if(name != null) {
			session.setAttribute("name", name);
		} else {
			 session.setAttribute("name", "guest");
		}
		session.setMaxInactiveInterval(3*60); /* 3분 동안 요청이 없으면 세션 무효화 */
%>
		<FONT COLOR="#0000FF"><%=session.getAttribute("name")%> </FONT>의 세션이 시작되었습니다.
<%		
	} else {
		String name = (String)session.getAttribute("name");
%>
		<FONT COLOR="#0000FF"><%= name %></FONT>님의 세션이 유지되고 있습니다.
<% 
	} 
	
%>
</BODY>
</HTML>