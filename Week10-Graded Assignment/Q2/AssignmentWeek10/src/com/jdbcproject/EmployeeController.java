package com.jdbcproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class EmployeeController {

	private Connection connection;
	private Statement statement;
	private ResultSet rs;
	Scanner sc = new Scanner(System.in);

	public EmployeeController(String url, String username, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, username, password);
			statement = connection.createStatement();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void addEmployee() {
		System.out.println("Enter Id,Name,Email,PhoneNumber of employee : ");
		String query = "insert into employee values ( " + sc.nextInt() + ",'" + sc.next() + "', '" + sc.next() + "', '"
				+ sc.next() + "')";
		try {
			statement.execute(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println();
	}

	public void delete() {
		System.out.print("Enter id to delete: ");

		String query = "delete from employee where id = " + sc.nextInt();
		try {
			statement.execute(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println();
	}

	public void update() {
		System.out.print("Enter id: ");
		int id = sc.nextInt();
		System.out.print("Enter name: ");
		String name = sc.next();
		System.out.print("Enter phoneNumber: ");
		String phoneNumber = sc.next();
		String query = "update employee set name = '" + name + "' , phone_number = '" + phoneNumber + "' where id = "
				+ id + " ";
		System.out.println(query);
		try {
			statement.execute(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println();
	}

	public void deleteAll() {
		String query = "truncate table employee";
		try {
			statement.execute(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println();
	}

	public void displayAll() {
		String query = "select * from employee";
		try {
			rs = statement.executeQuery(query);

			if (rs.isBeforeFirst()) {
				while (rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String emailId = rs.getString(3);
					String phoneNumber = rs.getString(4);

					System.out.println(id + "\t" + name + "\t" + emailId + "\t" + phoneNumber);
				}
			} else {
				System.out.println("No records are entered");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println();
	}
}
