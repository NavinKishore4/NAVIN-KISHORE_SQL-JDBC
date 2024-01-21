package com.jdbcproject;

import java.util.Scanner;

public class EmployeeOperator {
	public static void main(String[] args) {
		EmployeeController e = new EmployeeController("jdbc:mysql://localhost:3306/gl", "root", "root");

		int n = 0;
		Scanner sc = new Scanner(System.in);

		while (n != 6) {
			System.out.println("Enter 1 to Add Employee");
			System.out.println("Enter 2 to view all Employee ");
			System.out.println("Enter 3 to delete specific employee");
			System.out.println("Enter 4 to update name and mobile of employee");
			System.out.println("Enter 5 to delete all employee");
			System.out.println("Enter 6 to exit");
			System.out.print("Enter a number : ");
			n = sc.nextInt();
			switch (n) {
			case 1: {
				e.addEmployee();
				break;
			}
			case 2: {
				e.displayAll();
				break;
			}
			case 3: {
				e.delete();
				break;
			}
			case 4: {
				e.update();
				break;
			}
			case 5: {
				e.deleteAll();
				break;
			}
			case 6: {
				System.out.println("Exit successfully");
				break;
			}
			default: {
				System.out.println("Enter the values within 1-6");
			}
			}
		}
		sc.close();
	}

}
