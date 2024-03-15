package itexpert.chap07;
/**
 * 웹 어플리케이션에 필요한 메소드 모음 클래스.
 * @author kenu
 */
public class Util {
	/**
	 * 문자열이 null일 경우 빈문자열로 변경해주는 메소드 
	 * @param str
	 * @return String
	 */
	public static String nullChk(String str) {
		return nullChk(str, "");
	}

	/**
	 * 문자열이 null일 경우 지정된 문자열로 변경해주는 메소드 
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
