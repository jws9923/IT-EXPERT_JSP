<%@ page contentType="text/html;charset=ms949" %>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
<%@ page import="java.io.*"%>
<% request.setCharacterEncoding("ms949"); %>
request ����
<pre>
contentType  : <%=request.getContentType()%>
contentLength: <%=request.getContentLength()%>
method : <%=request.getMethod()%>
field1 : <%=request.getParameter("field1")%>
file1  : <%=request.getParameter("file1")%>
</pre>
<hr>
request ��Ʈ��
<xmp><%

    // request �� ��Ʈ������ �޾Ƽ� BufferedReader �� �ִ´�.
    BufferedReader in = new BufferedReader(
        new InputStreamReader( request.getInputStream() ) );

    String line;

    // BufferedReader ���� ���پ� ���� ����Ѵ�.
    // ��Ʈ���� ���� ������ ��� null �� ��ȯ�ȴ�.
    while ((line = in.readLine()) != null) {
        out.println(line);
    } // end while
%></xmp>