<%-- showinfo.jsp --%>
<%@page session="false" contentType="text/html;charset=euc-kr" %>
<%
	HttpSession session = request.getSession(false);
	if(session == null) {
		response.sendRedirect("login.html");
		return;
	}
	String name = (String)session.getAttribute("login.name");
	String passwd = (String)session.getAttribute("login.passwd");
	String id = (String)session.getAttribute("login.id");
	Long start = (Long)session.getAttribute("login.time");
	long current = System.currentTimeMillis();
	long duration = current - start.longValue();
	long duration_min = (duration / 1000) / 60;
	long duration_sec = (duration /1000) % 60;
	String session_duration = "" + duration_min + "분 " + duration_sec + "초"; 
%>
로그인 정보<HR>
이름: <%= name %><BR>
아이디:<%= id %><BR>
패스워드:<%=passwd %><BR>
세션유지시간: <%= session_duration %>
<FORM ACTION="logout.jsp">
<INPUT TYPE="SUBMIT" VALUE="로그 아웃">
</FORM>
