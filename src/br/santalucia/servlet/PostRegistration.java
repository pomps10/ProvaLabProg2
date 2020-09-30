package br.santalucia.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.santalucia.registrations.Registrations;
import br.santalucia.registrations.RegistrationsArray;

/**
 * Servlet implementation class PostRegistration
 */
@WebServlet("/PostRegistration")
public class PostRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PostRegistration() {
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
		// TODO Auto-generated method stub
//		doGet(request, response);
		String name = request.getParameter("firstName");
		String email = request.getParameter("email");
		String cel = request.getParameter("celphone");

		List<Registrations> registrationsList = RegistrationsArray.registrationsList;

		for (Registrations registration : registrationsList) {
			if (registration.getEmail().equals(email)) {
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("/index.jsp");
				request.setAttribute("email", email);
				reqDispatcher.forward(request, response);
				return;
			}
		}
		Registrations register = new Registrations(name, email, cel);

		RequestDispatcher reqDispatcher = request.getRequestDispatcher("/registered.jsp");

		request.setAttribute("registersArray", registrationsList);
		request.setAttribute("registered", register);
		reqDispatcher.forward(request, response);

	}

}
