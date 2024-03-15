<%@ page import="java.sql.Connection,
                 java.sql.CallableStatement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();
// 테스트용 데이터 준비
String [][] testdata = {
        {"idf", "passf", "이름F", "111111", "1111115"},
        {"idg", "passg", "이름G", "222222", "1111116"},
        {"idh", "passh", "이름H", "111111", "1111117"},
        {"idi", "passi", "이름I", "444444", "1111118"}
    };

// PROCEDURE CALL STRING
String QUERY_PROC =
            "{CALL PROC_INPUT_DATA(:ID, :PASS, :NAME, :JUMIN1, :JUMIN2)}";

Connection conn= null;
CallableStatement cstmt = null;

try {
// 커넥션 가져오기
    conn = DsConn.getConnection();
// 트랜잭션 사용함
    conn.setAutoCommit(false);

// CallableStatement 를 생성
    cstmt = conn.prepareCall(QUERY_PROC);
// 데이터 길이만큼 반복
    for(int i = 0; i< testdata.length; i++) {

        cstmt.setString(1, testdata[i][0]);  // id
        cstmt.setString(2, testdata[i][1]);  // password
        cstmt.setString(3, testdata[i][2]);  // name
        cstmt.setString(4, testdata[i][3]);  // jumin1
        cstmt.setString(5, testdata[i][4]);  // jumin2

        cstmt.executeUpdate();

        // 아랫 줄 주석(//)을 제거하면 한 행씩 커밋함
        // conn.commit();

    } // end for

// CallableStatement 를 닫기
    cstmt.close();

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
%>