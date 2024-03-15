package itexpert.chap04;

/**
 * IT Expert JSP 4장 
 * MyInfo.java
 */

public class MyInfo {
	
	private String name;
	private int age;

	/**
	 * 생성자(Constructor)
	 * 변수의 값을 초기화 한다.
	 */
	public MyInfo(){
		name = "Lee";
		age  = 22;
	}

	/**
	 * 이름을 설정한다.
	 * @param name 이름
	 */
	public void setName(String name){
		this.name = name;
	}

	/**
	 * 나이를 설정한다.
	 * @param age 나이
	 */
	public void setAge(int age){
		this.age = age;
	}

	/**
	 * 이름을 가져온다.
	 * @return 이름
	 */
	public String getName(){
		return name;
	}

	/**
	 * 나이를 가져온다.
	 * @return 나이
	 */
	public int getAge(){
		return age;
	}
}
