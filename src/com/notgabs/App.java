package com.notgabs;

import java.sql.Connection;
import java.sql.DriverManager;

public class App {

	public static void main(String[] args) {
		String jdbcUrl = "jdbc:mysql://localhost:3306/crm_mvc?useSSL=false";
		String user = "crm";
		String pass = "crm";

		try {
			System.out.println("connecting to DB: " + jdbcUrl);
			Connection con = DriverManager.getConnection(jdbcUrl, user, pass);

			System.out.println("Connection successfull!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
