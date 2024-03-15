<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 java.io.Reader,
                 itexpert.chap07.DbPool"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
// Äõ¸® ¼±¾ð
String QUERY_CLOB_TABLE =
    "SELECT NAME, SUBJECT, CONTENT FROM CLOB_TABLE WHERE SEQ = ?";

Connection conn= null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
// Ä¿³Ø¼Ç °¡Á®¿À±â
    conn = DbPool.getConnection();

    pstmt = conn.prepareStatement(QUERY_CLOB_TABLE);
    pstmt.setString(1, request.getParameter("seq"));
    rs = pstmt.executeQuery();

    StringBuffer sbuf = new StringBuffer();

    if (rs.next()) {
        sbuf.setLength(0);
        out.println(request.getParameter("seq")+"<br>");
        out.println(rs.getString(1)+"<br>");  // name
        out.println(rs.getString(2)+"<br>");  // subject
        // content ÀÐ¾î¿À±â
        Reader reader = rs.getCharacterStream(3);
        char[] buffer = new char[1024];
        int read;
        while((read=reader.read(buffer,0,1024))!=-1) {
            sbuf.append(buffer,0,read);
        } // end while
        reader.close();
        out.println(sbuf);
    } // end if
    rs.close();
    pstmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
// Ä¿³Ø¼Ç ´Ý¾ÆÁÖ±â(°´Ã¼ ¹ÝÈ¯)
    conn.close();
}
%><hr><a href="jdbc_clob_list.jsp">list</a>
<a href="jdbc_clob_form.htm">write</a>