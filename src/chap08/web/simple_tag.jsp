<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/simple-taglib.tld" %>
<it:nocache /> <!-- 캐시 지우기 -->
<it:reqEncode /> <!-- 리퀘스트 인코딩 -->

<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
안녕하세요. <it:name/>!
<form method="post">
    <input type="text" name="name" value="<it:name/>">
    <input type="submit">
</form>