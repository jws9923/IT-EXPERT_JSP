<!--
IT Expert JSP  4�� 
myCalendar.jsp
-->
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*" %>
<jsp:useBean id="mycal" class="itexpert.chap04.MyCalendar" scope="page" />
<b>�⺻ ��� ����</b><br>
���� ���ڴ� <jsp:getProperty name="mycal" property="today" />
<p>
<b>�����ڷ� "-"�� �־�����</b><BR>
<jsp:setProperty name="mycal" property="delimiter" value="-" />
���� ���ڴ� <jsp:getProperty name="mycal" property="today" />
<p>
<b>�����ڷ� ""�� �־�����</b><br>
<jsp:setProperty name="mycal" property="delimiter" value="" />
���� ���ڴ� <jsp:getProperty name="mycal" property="today" />
