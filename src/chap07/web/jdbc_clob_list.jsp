<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 itexpert.chap07.Util,
                 itexpert.chap07.DbPool"
         pageEncoding="MS949" %>
<%
request.setCharacterEncoding("MS949");

Connection pconn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

// �˻��� �ʵ�(name, content, all)�� �˻�� �޾ƿ´�.
String keyfield = Util.nullChk(request.getParameter("keyfield"));
String keyword  = Util.nullChk(request.getParameter("keyword"));

try {
    pconn = DbPool.getConnection();

    String query = " SELECT SEQ, NAME, SUBJECT FROM CLOB_TABLE ";
    // �˻�� �ִ� ��� �˻� �������� keyfield�� ���� �ٿ��ش�.
    if (!"".equals(keyword)) {
    	if (keyfield.equals("name")) {
        	query += " WHERE NAME LIKE '%'||:KEYWORD||'%' ";
    	}
    	if (keyfield.equals("content")) {
        	query += " WHERE DBMS_LOB.INSTR(CONTENT, :KEYWORD)>0 ";
    	}
    	if (keyfield.equals("all")) {
        	query += " WHERE NAME LIKE '%'||:KEYWORD||'%' OR DBMS_LOB.INSTR(CONTENT, :KEYWORD)>0 ";
    	}
    }
    pstmt = pconn.prepareStatement(query);
    // keyword �� �ִ� ��� ���ε� ������ �־��ش�.
    if (!"".equals(keyword)) {
        pstmt.setString(1, keyword);
        if (keyfield.equals("all"))
            pstmt.setString(2, keyword);
    }
    rs = pstmt.executeQuery();

%>
<table border="1" cellspacing="0">
<%
    while(rs.next()) {
%><tr>
    <td><%=rs.getInt("SEQ")%></td>
    <td><%=rs.getString("NAME")%></td>
    <td><a href="jdbc_clob_view.jsp?seq=<%=rs.getInt("SEQ")%>">
        <%=rs.getString("SUBJECT")%></a></td>
</tr>
<%
    } // end while
    rs.close();
    pstmt.close();
} catch(Exception e) {
	out.println(e.getMessage());
} finally {
	if (pconn!=null) pconn.close();
}
%></table>
<hr>
<a href="jdbc_clob_form.htm">write</a>
<a href="jdbc_clob_list.jsp">list</a>
<form name="f1" method="get">
    <select name="keyfield">
        <option value="name"   >name   </option>
        <option value="content">content</option>
        <option value="all"    >all    </option>
    </select>
    <input type="text" size="10" name="keyword" value="<%=keyword%>">
    <input type="submit" value="�˻�">
</form>
