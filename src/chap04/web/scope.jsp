<!--
IT Expert JSP  4�� 
scope.jsp
-->

<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="myinfo" class="itexpert.chap04.MyInfo" scope="session"/>
<jsp:setProperty name="myinfo" property="name"/>

���� ������ �̸� : <jsp:getProperty name="myinfo" property="name" />
<p>
<form name="formName" action="scope.jsp">
	<input type="text" name="name">
	<input type="submit" value="�̸�����">
</form>
<p>
<a href="scope.jsp">�ٽ� �б�</a>