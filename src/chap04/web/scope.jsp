<!--
IT Expert JSP  4장 
scope.jsp
-->

<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="myinfo" class="itexpert.chap04.MyInfo" scope="session"/>
<jsp:setProperty name="myinfo" property="name"/>

현재 설정된 이름 : <jsp:getProperty name="myinfo" property="name" />
<p>
<form name="formName" action="scope.jsp">
	<input type="text" name="name">
	<input type="submit" value="이름변경">
</form>
<p>
<a href="scope.jsp">다시 읽기</a>