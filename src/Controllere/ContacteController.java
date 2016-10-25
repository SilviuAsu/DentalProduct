package Controllere;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import Entitati.DBConnection;
import Entitati.Produse;
import Entitati.Contacte;

public class ContacteController {

	public void addContacts(Contacte c) {
		String sql = "insert into clientcontacs values('" + c.getFirstName() + "','" + c.getLastName() + "','"
				+ c.getEmail() + "','" + c.getAdress() + "','" + c.getPhone() + "','" + c.getCity() + "','"
				+ c.getState() + "','" + c.getZipCode() + "','" + c.getDescription() + "')";
		executeModifyQuery(sql);
	}

	public void executeModifyQuery(String sql) {
		try {
			DBConnection conn = new DBConnection();
			Connection con = conn.getConnection();
			con.createStatement().execute(sql);

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}

	}

	public static ResultSet executeFetchQuery(String sql) {
		ResultSet rs = null;
		try {
			DBConnection conn = new DBConnection();
			Connection con = conn.getConnection();
			rs = con.createStatement().executeQuery(sql);

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}

}
