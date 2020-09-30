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
 * Servlet implementation class PostConsult
 */
@WebServlet("/PostConsult")
public class PostConsult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PostConsult() {
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
		String name = request.getParameter("firstName");

		List<Registrations> registrationsList = RegistrationsArray.registrationsList;

		for (Registrations registration : registrationsList) {
			if (registration.getName().equals(name)) {
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("/consult.jsp");
				request.setAttribute("registration", registration);
				reqDispatcher.forward(request, response);
				return;
			}
		}

		RequestDispatcher reqDispatcher = request.getRequestDispatcher("/consult.jsp");

		request.setAttribute("name", name);
		reqDispatcher.forward(request, response);

	}

}
