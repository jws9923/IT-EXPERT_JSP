<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();
// 테스트용 데이터 준비
String [][] testdata = {
        {"ida", "passa", "이름A", "111111", "1111111"},
        {"idb", "passb", "이름B", "222222", "1111111"},
        {"idc", "passc", "이름C", "111111", "1111111"},
        {"idd", "passd", "이름D", "444444", "1111111"}
    };
// 쿼리 선언
String QUERY_SEQ_AUTH =
    "SELECT SEQ_AUTH.NEXTVAL FROM DUAL";
String QUERY_INSERT_AUTH =
    "INSERT INTO AUTH (SEQ, ID, PASSWORD) VALUES (:SEQ, :ID, :PASSWORD)";
String QUERY_INSERT_MEMBER_INFO =
    "INSERT INTO MEMBER_INFO (FSEQ, NAME, JUMIN1, JUMIN2) VALUES (:FSEQ, :NAME, :JUMIN1, :JUMIN2)";
// 긴 줄이지만 " " 사이는 엔터키로 줄바꾸지 말고 한 줄로 이어서 쓴다.

Connection conn= null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
// 커넥션 가져오기
    conn = DsConn.getConnection();
// 트랜잭션 사용함
    conn.setAutoCommit(false);

    int seq = 0;
// 데이터 길이만큼 반복
    for(int i = 0; i< testdata.length; i++) {
        // 일련번호(seq) 시퀀스에서 가져오기
        // PreparedStatement 를 생성
        pstmt = conn.prepareStatement(QUERY_SEQ_AUTH);
        // 쿼리를 실행한다.
        rs = pstmt.executeQuery();
        // seq 값 가져온다.
        if(rs.next()) {
            seq = rs.getInt(1);
        }
        // PreparedStatement 를 닫는다.
        pstmt.close();

        // 로그인 테이블(seq, id, password) 입력하기
        pstmt = conn.prepareStatement(QUERY_INSERT_AUTH);
        pstmt.setInt   (1, seq);
        pstmt.setString(2, testdata[i][0]);  // id
        pstmt.setString(3, testdata[i][1]);  // password

        pstmt.executeUpdate();
        pstmt.close();

        // 회원 정보 테이블(fseq, name, jumin1, jumin2) 입력하기
        pstmt = conn.prepareStatement(QUERY_INSERT_MEMBER_INFO);
        pstmt.setInt   (1, seq);
        pstmt.setString(2, testdata[i][2]);  // name
        pstmt.setString(3, testdata[i][3]);  // jumin1
        pstmt.setString(4, testdata[i][4]);  // jumin2

        pstmt.executeUpdate();
        pstmt.close();
        // 아랫 줄 주석(//)을 제거하면 한 행씩 커밋함
        // conn.commit();

    } // end for

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