<%-- myexcel.jsp --%>
<%@ page contentType="application/vnd.ms-excel;charset=euc-kr" %>
<%
	response.setHeader("Content-Disposition", "inline; filename=myfile.xls");
	response.setHeader("Content-Description", "JSP Generated Data");

%><html>
<body bgcolor=white>
<table border=1>
	<tr bgcolor="#CACACA">
		<th>�̸�</th>
		<th>Site URL</th>
	</tr>
	<tr>
		<td>������</td>
		<td>http://suribada.com</td>
	</tr>
	<tr>
		<td>��ȸ��</td>
		<td>http://nudejava.com</td>
	</tr>
	<tr>
		<td>�̼���</td>
		<td>http://aboutjsp.com</td>
	</tr>
	<tr>
		<td>�㱤��</td>
		<td>http://okjsp.pe.kr</td>
	</tr>
</table>
</body>
</html>