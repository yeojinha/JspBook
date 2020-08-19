package ch04.com.dao;

public class Person {
	private int id=2017301501;
	private String name="ÇÏ¿©Áø";

	public Person() {

	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setId(int id) {
		this.id=id;
	}
	public void setName(String name) {
		this.name=name;
	}
	
	public String getInfor() {
		return "id: "+this.id+" name: "+this.name;
	}
	
}
