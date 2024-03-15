<%@ page contentType="text/html;charset=MS949" %>
<%@ taglib uri="/WEB-INF/tld/itexpert-taglib.tld" prefix="it" %>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
<%
    java.util.ArrayList arrayList= new java.util.ArrayList();
    arrayList.add("하나");
    arrayList.add("둘");
    arrayList.add("셋");
%>
Collection 에 들어있는 원소 집합 { <%= arrayList %> }
<hr>

목록<br>
<it:loop collection="<%= arrayList %>" >
  <%= cnt %>: <%= item %><br>
</it:loop>
