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
	String session_duration = "" + duration_min + "�� " + duration_sec + "��"; 
%>
�α��� ����<HR>
�̸�: <%= name %><BR>
���̵�:<%= id %><BR>
�н�����:<%=passwd %><BR>
���������ð�: <%= session_duration %>
<FORM ACTION="logout.jsp">
<INPUT TYPE="SUBMIT" VALUE="�α� �ƿ�">
</FORM>
