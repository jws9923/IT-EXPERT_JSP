package itexpert.chap07;
/**
 * �� ���ø����̼ǿ� �ʿ��� �޼ҵ� ���� Ŭ����.
 * @author kenu
 */
public class Util {
	/**
	 * ���ڿ��� null�� ��� ���ڿ��� �������ִ� �޼ҵ� 
	 * @param str
	 * @return String
	 */
	public static String nullChk(String str) {
		return nullChk(str, "");
	}

	/**
	 * ���ڿ��� null�� ��� ������ ���ڿ��� �������ִ� �޼ҵ� 
	 * @param str
	 * @return String
	 */
	public static String nullChk(String str, String newStr) {
		if (str==null) 
			return newStr;
		else 
			return str;
	}

}
