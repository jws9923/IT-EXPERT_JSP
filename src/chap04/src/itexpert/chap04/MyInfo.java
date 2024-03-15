package itexpert.chap04;

/**
 * IT Expert JSP 4�� 
 * MyInfo.java
 */

public class MyInfo {
	
	private String name;
	private int age;

	/**
	 * ������(Constructor)
	 * ������ ���� �ʱ�ȭ �Ѵ�.
	 */
	public MyInfo(){
		name = "Lee";
		age  = 22;
	}

	/**
	 * �̸��� �����Ѵ�.
	 * @param name �̸�
	 */
	public void setName(String name){
		this.name = name;
	}

	/**
	 * ���̸� �����Ѵ�.
	 * @param age ����
	 */
	public void setAge(int age){
		this.age = age;
	}

	/**
	 * �̸��� �����´�.
	 * @return �̸�
	 */
	public String getName(){
		return name;
	}

	/**
	 * ���̸� �����´�.
	 * @return ����
	 */
	public int getAge(){
		return age;
	}
}
