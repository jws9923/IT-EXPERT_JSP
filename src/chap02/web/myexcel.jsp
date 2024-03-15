<%-- myexcel.jsp --%>
<%@ page contentType="application/vnd.ms-excel;charset=euc-kr" %>
<%
	response.setHeader("Content-Disposition", "inline; filename=myfile.xls");
	response.setHeader("Content-Description", "JSP Generated Data");

%><html>
<body bgcolor=white>
<table border=1>
	<tr bgcolor="#CACACA">
		<th>이름</th>
		<th>Site URL</th>
	</tr>
	<tr>
		<td>노재춘</td>
		<td>http://suribada.com</td>
	</tr>
	<tr>
		<td>양회석</td>
		<td>http://nudejava.com</td>
	</tr>
	<tr>
		<td>이선재</td>
		<td>http://aboutjsp.com</td>
	</tr>
	<tr>
		<td>허광남</td>
		<td>http://okjsp.pe.kr</td>
	</tr>
</table>
</body>
</html>