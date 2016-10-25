package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entitati.Contacte;
import Entitati.DBConnection;
import Controllere.ContacteController;
import Controllere.ProduseController;

/**
 * Servlet implementation class contacte
 */
@WebServlet("/contacte")
public class ContacteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContacteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("first_name");
		String lastname = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String comment = request.getParameter("comment");

		try {
			DBConnection conn = new DBConnection();
			Connection con = conn.getConnection();
			Statement st = con.createStatement();
			int i = st.executeUpdate(
					"insert into clientcontacts(FirstName,LastName,Email,Phone,Adress,City,State,ZipCode,Description)"
							+ "values('" + firstname + "','" + lastname + "','" + email + "','" + phone + "','"
							+ address + "','" + city + "','" + state + "','" + zip + "','" + comment + "')");
			System.out.println("Data is successfully inserted!");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

}
