package com.jdbcproject;

public class Employee {

	private int Id;
	private String Name;
	private String Email_Id;
	private String Phone_Number;

	public Employee(int Id, String Name, String Email_Id, String Phone_Number) {
		this.Id = Id;
		this.Name = Name;
		this.Email_Id = Email_Id;
		this.Phone_Number = Phone_Number;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail_Id() {
		return Email_Id;
	}

	public void setEmail_Id(String email_Id) {
		Email_Id = email_Id;
	}

	public String getPhone_Number() {
		return Phone_Number;
	}

	public void setPhone_Number(String phone_Number) {
		Phone_Number = phone_Number;
	}

}
