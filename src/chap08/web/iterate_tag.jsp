<%@ page contentType="text/html;charset=MS949" %>
<%@ taglib uri="/WEB-INF/tld/itexpert-taglib.tld" prefix="it" %>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
<%
    java.util.ArrayList arrayList= new java.util.ArrayList();
    arrayList.add("�ϳ�");
    arrayList.add("��");
    arrayList.add("��");
%>
Collection �� ����ִ� ���� ���� { <%= arrayList %> }
<hr>

���<br>
<it:loop collection="<%= arrayList %>" >
  <%= cnt %>: <%= item %><br>
</it:loop>
