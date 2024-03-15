<!--
IT Expert JSP  4장 
myCalendar.jsp
-->
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*" %>
<jsp:useBean id="mycal" class="itexpert.chap04.MyCalendar" scope="page" />
<b>기본 출력 형태</b><br>
오늘 날자는 <jsp:getProperty name="mycal" property="today" />
<p>
<b>구분자로 "-"를 주었을때</b><BR>
<jsp:setProperty name="mycal" property="delimiter" value="-" />
오늘 날자는 <jsp:getProperty name="mycal" property="today" />
<p>
<b>구분자로 ""를 주었을때</b><br>
<jsp:setProperty name="mycal" property="delimiter" value="" />
오늘 날자는 <jsp:getProperty name="mycal" property="today" />
