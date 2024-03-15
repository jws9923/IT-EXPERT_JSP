package itexpert.chap07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * �����ͺ��̽� Ǯ���� ���ᰴü�� �������� Ŭ����
 * @author kenu
 */
public class DbPool {
	final static String DB_URL =
		"jdbc:oracle:thin:@localhost:1521:ORCL";
	final static String DB_USER = "scott";
	final static String DB_PASSWORD= "tiger";

	/* jdbc ����̹� �ε��� �� ���� ����Ǹ� �ȴ�.
	 * DbPool ���� ȣ��� �� ���� ����ȴ�.
	 */
	static {
	  try{
		  new pool.JDCConnectionDriver(
					"oracle.jdbc.driver.OracleDriver",
		  DB_URL,DB_USER, DB_PASSWORD);
	  }catch(Exception e){}
	}

	/**
	 * Ŀ�ؼ��� �����´�.
	 * @return Connection
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:jdc:jdcpool");
	}
}
