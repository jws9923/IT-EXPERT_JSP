<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/simple-taglib.tld" %>
<it:nocache /> <!-- ĳ�� ����� -->
<it:reqEncode /> <!-- ������Ʈ ���ڵ� -->

<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
�ȳ��ϼ���. <it:name/>!
<form method="post">
    <input type="text" name="name" value="<it:name/>">
    <input type="submit">
</form>