<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();

Connection conn= null;
PreparedStatement pstmt = null;

StringBuffer queryBuf = new StringBuffer();

try {

    // Connection 을 가져온다.
    conn = DsConn.getConnection();

    // 테이블을 생성하는 쿼리
    queryBuf.append("CREATE TABLE TEST_TABLE ( ")
        .append(" SEQ NUMBER NOT NULL, ")
        .append(" SUBJECT VARCHAR(200) NOT NULL")
        .append(" ) ");

    // PreparedStatement 를 생성
    pstmt = conn.prepareStatement(queryBuf.toString());

    // 쿼리를 실행한다.
    pstmt.executeUpdate();

    // PreparedStatement 를 닫는다.
    pstmt.close();

    // 데이터를 입력하는 쿼리
    queryBuf.setLength(0);
    queryBuf.append("INSERT INTO TEST_TABLE (SEQ, SUBJECT) VALUES ")
            .append("( :seq , '이 행은 '||:subject||' 번째 입력되었습니다.' )");

    // 다시 PreparedStatement를 생성한다.
    pstmt = conn.prepareStatement(queryBuf.toString());
%>start:<%=System.currentTimeMillis()-sTime%><hr><%
    // 반복 15000회
    for(int i=0; i<15000; i++) {
    //   쿼리를 실행한다.
        pstmt.setInt(1, i);
        pstmt.setInt(2, i);
    //   배치에 추가한다.
        pstmt.addBatch();
    } // end for
%>before batch job :<%=System.currentTimeMillis()-sTime%><%
    // 저장된 쿼리를 한꺼번에 실행시킨다.
    pstmt.executeBatch();
%><hr>end:<%=System.currentTimeMillis()-sTime%><%

    // PreparedStatement 를 닫는다.
    pstmt.close();

    // 테이블을 삭제하는 쿼리
    queryBuf.setLength(0);
    queryBuf.append("DROP TABLE TEST_TABLE");

    // PreparedStatement 를 생성
    pstmt = conn.prepareStatement(queryBuf.toString());

    // 쿼리를 실행한다.
    pstmt.executeUpdate();

    // PreparedStatement 를 닫는다.
    pstmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection 객체 반환
    conn.close();
}
%>