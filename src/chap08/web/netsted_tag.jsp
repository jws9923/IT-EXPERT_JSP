<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/itexpert-taglib.tld" %>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
5 > 4 조건이
<it:if>
    <it:condition><%= 5>4 %></it:condition>
    <it:then>참입니다.</it:then>
    <it:else>거짓입니다.</it:else>
</it:if>
<br>
5 > 6 조건이
<it:if>
    <it:condition><%= 5>6 %></it:condition>
    <it:then>참입니다.</it:then>
    <it:else>거짓입니다.</it:else>
</it:if>
