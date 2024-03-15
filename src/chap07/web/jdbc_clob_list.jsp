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

// 검색어 필드(name, content, all)와 검색어를 받아온다.
String keyfield = Util.nullChk(request.getParameter("keyfield"));
String keyword  = Util.nullChk(request.getParameter("keyword"));

try {
    pconn = DbPool.getConnection();

    String query = " SELECT SEQ, NAME, SUBJECT FROM CLOB_TABLE ";
    // 검색어가 있는 경우 검색 조건절을 keyfield에 따라 붙여준다.
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
    // keyword 가 있는 경우 바인드 변수에 넣어준다.
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
    <input type="submit" value="검색">
</form>
