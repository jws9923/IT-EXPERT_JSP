<%@ page pageEncoding="MS949" info="body 태그 적용" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/body-taglib.tld" %>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
로그를 남기는 페이지입니다!
<it:log>
로그를 남기는 페이지입니다!<%= 3*4 %>
</it:log>
<br>
<it:upper>
this will be seen as upper case.
</it:upper>
