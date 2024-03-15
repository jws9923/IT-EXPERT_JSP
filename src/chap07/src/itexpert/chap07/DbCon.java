package itexpert.chap07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * �����ͺ��̽� ���ᰴü�� �������� Ŭ����
 * @author kenu
 */
public class DbCon {
	final static String DB_URL =
		"jdbc:oracle:thin:@localhost:1521:ORCL";
	final static String DB_USER = "scott";
	final static String DB_PASSWORD= "tiger";

	static{
		/* jdbc ����̹� �ε��� �� ���� ����Ǹ� �ȴ�.
		 * DbCon ���� ȣ��� �� ���� ����ȴ�.
		 */
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			/* �����޽����� /logs ���丮�� catalina.out �̳�
			 * �ֿܼ� ��������.
			 */
			System.out.println(e.toString());
		}
	}

	/**
	 * Ŀ�ؼ��� �����´�.
	 * @return Connection
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
	}
}
