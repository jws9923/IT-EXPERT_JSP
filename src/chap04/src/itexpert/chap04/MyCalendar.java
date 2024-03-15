package itexpert.chap04;

/**
 * IT Expert JSP 4장 
 * MyCalendar.java
 */

import java.util.*;
import java.text.*;

public class MyCalendar {

	/**
	 * 년, 월, 일 사이의 구분자. 기본값은 / 이다.
	 */
	private String delimiter = "/";

	/**
	 * 년, 월, 일 사이의 구분자를 설정한다.
	 */
	public void setDelimiter(String delimiter){
		this.delimiter = delimiter;
	}

	/**
	 * 오늘 날자를 가져온다.  년, 월, 일 사이의 구분자는 setDelimiter() 로 미리 설정해야 한다. 기본값은 / 이다.
	 * @return 오늘의 날자
	 */
	public String getToday(){
		GregorianCalendar calendar = new GregorianCalendar();
		StringBuffer today = new StringBuffer();

		DecimalFormat df = new DecimalFormat("00"); 

		today.append(calendar.get(Calendar.YEAR));
		today.append(this.delimiter);
		today.append(df.format(calendar.get(Calendar.MONTH) + 1));
		today.append(this.delimiter);
		today.append(df.format(calendar.get(Calendar.DATE)));
		
		return today.toString();

	} 
}
