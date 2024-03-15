<%@ page import="java.sql.Connection,
                 java.sql.Statement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();

Connection conn= null;
Statement stmt = null;

StringBuffer queryBuf = new StringBuffer();

try {

    // Connection 을 가져온다.
    conn = DsConn.getConnection();

    // 테이블을 생성하는 쿼리
    queryBuf.append("CREATE TABLE TEST_TABLE ( ")
        .append(" SEQ NUMBER NOT NULL, ")
        .append(" SUBJECT VARCHAR(200) NOT NULL")
        .append(" ) ");

    // Statement 를 생성
    stmt = conn.createStatement();

    // 쿼리를 실행한다.
    stmt.executeUpdate(queryBuf.toString());

    // Statement 를 닫는다.
    stmt.close();

    // 다시 Statement 를 생성한다.
    stmt = conn.createStatement();
%>start:<%=System.currentTimeMillis()-sTime%><hr><%
    // 반복 15000회
    for(int i=0; i<15000; i++) {
    //   쿼리를 만들어서 실행한다.
        queryBuf.setLength(0);
        queryBuf.append("INSERT INTO TEST_TABLE (SEQ, SUBJECT) VALUES ( " )
                .append(i).append(", '이 행은 ")
                .append(i).append(" 번째 입력되었습니다.' ) ");
    //   배치에 추가한다.
        stmt.addBatch(queryBuf.toString());
    } // end for
%>before batch job :<%=System.currentTimeMillis()-sTime%><%
    // 저장된 쿼리를 한꺼번에 실행시킨다.
    stmt.executeBatch();
%><hr>end:<%=System.currentTimeMillis()-sTime%><%

    // Statement 를 닫는다.
    stmt.close();

    // 테이블을 삭제하는 쿼리
    queryBuf.setLength(0);
    queryBuf.append("DROP TABLE TEST_TABLE");

    // Statement 를 생성
    stmt = conn.createStatement();

    // 쿼리를 실행한다.
    stmt.executeUpdate(queryBuf.toString());

    // Statement 를 닫는다.
    stmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection 객체 반환
    conn.close();
}
%>