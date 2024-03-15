<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 java.io.Reader,
                 java.io.Writer,
                 java.io.CharArrayReader,
                 oracle.sql.CLOB,
                 oracle.jdbc.driver.OracleResultSet,
                 itexpert.chap07.DbPool"
         pageEncoding="MS949" %>
<%
request.setCharacterEncoding("MS949");
response.setContentType("text/html;");
// 데이터 준비
String content = request.getParameter("content");
// 쿼리 선언
String QUERY_SEQ_CLOB_TABLE =
    "SELECT SEQ_CLOB_TABLE.NEXTVAL FROM DUAL";
String QUERY_INSERT_CLOB_TABLE =
    "INSERT INTO CLOB_TABLE (SEQ, NAME, SUBJECT, CONTENT) VALUES (:SEQ, :NAME, :SUBJECT, EMPTY_CLOB())";
String QUERY_INSERT_CLOB =
    "SELECT CONTENT FROM CLOB_TABLE WHERE SEQ = ? FOR UPDATE";

Connection conn= null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
// 커넥션 가져오기
    conn = DbPool.getConnection();
// 트랜잭션 사용함
    conn.setAutoCommit(false);

    int seq = 0;
    // 일련번호(seq) 시퀀스에서 가져오기
    // PreparedStatement 를 생성
    pstmt = conn.prepareStatement(QUERY_SEQ_CLOB_TABLE);
    // 쿼리를 실행한다.
    rs = pstmt.executeQuery();
    // seq 값 가져온다.
    if(rs.next()) {
        seq = rs.getInt(1);
    }
    // PreparedStatement 를 닫는다.
    pstmt.close();

    // 테이블 입력(CONTENT 는 CLOB_EMPTY()로)
    pstmt = conn.prepareStatement(QUERY_INSERT_CLOB_TABLE);
    pstmt.setInt   (1, seq);
    pstmt.setString(2, request.getParameter("name"));  // name
    pstmt.setString(3, request.getParameter("subject"));  // subject

    pstmt.executeUpdate();
    pstmt.close();

    // CLOB 입력
    pstmt = conn.prepareStatement(QUERY_INSERT_CLOB);
    pstmt.setInt(1,seq);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        // ResultSet을 oracle.jdbc.driver.OracleResultSet으로 캐스팅 후에
        // CLOB 주소를 가져와 oracle.sql.CLOB에 입력
    	CLOB clob = ((OracleResultSet)rs).getCLOB(1);
    	// CLOB 컬럼으로 쓰기 위한 통로 Writer 생성
    	Writer writer = clob.getCharacterOutputStream();
    	// content String 을 Reader src로 변환 후 입력
    	Reader src = new CharArrayReader(content.toCharArray());
    	char[] buffer = new char[1024];
    	int read = 0;
        // 1024 char씩 끊어서 CLOB 컬럼으로 쓰기
    	while ( (read = src.read(buffer,0,1024)) != -1) {
    	    writer.write(buffer, 0, read); // write clob.
    	}
    	src.close();
    	writer.close();

    }
    rs.close();
    pstmt.close();

// 수행 완료시 커밋
    conn.commit();

} catch (SQLException e) {
// 예외 발생시 롤백하고 에러메시지를 표시한다.
    conn.rollback();
    out.println("err:"+e.toString());
} finally {
// 트랜잭션 기본상태로 전환
    conn.setAutoCommit(true);
// 커넥션 닫아주기(객체 반환)
    conn.close();
}
%><a href="jdbc_clob_list.jsp">list</a>