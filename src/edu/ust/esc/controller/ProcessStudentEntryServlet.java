package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ust.esc.model.StudentEntryBean;
import edu.ust.esc.utility.BeanFactory;
import edu.ust.esc.utility.Validate;
import edu.ust.esc.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/StudentEntryProcess.html")
public class ProcessStudentEntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init() throws ServletException {
		connection = SQLOperations.getConnection();
		
		if (connection != null) {
			getServletContext().setAttribute("dbConnection", connection);
			System.out.println("connection is READY.");
		} else {
			System.err.println("connection is NULL.");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String middleName = request.getParameter("middleName");
		String yearLevelAndSection = request.getParameter("yearLevelAndSection");
		String studentNumber = request.getParameter("studentNumber");
		String emailAddress = request.getParameter("emailAddress");
		String category = request.getParameter("category");
		String concernsAndComplaints = request.getParameter("concernsAndComplaints");
		
		if (Validate.isValid(studentNumber, connection)) 
		{
			StudentEntryBean studentEntry = BeanFactory.getFactoryBean(
					lastName, firstName, middleName, yearLevelAndSection,
					studentNumber, emailAddress, category,
					concernsAndComplaints);

			if (connection != null) 
			{
				if (SQLOperations.addStudentEntry(studentEntry, connection)) 
				{
					System.out.println("successful insert");
					String link = "index.html";
					String message = "Thankyou for sharing your concern. Please wait for a reply from our representative.";
					request.setAttribute("link", link);
					request.setAttribute("message", message);
					request.setAttribute("studentEntry", studentEntry);
					getServletContext().getRequestDispatcher("/alert.jsp")
							.forward(request, response);
				} 
				else 
				{
					System.out.println("failed insert");
					String link = "index.html";
					String message = "Something went wrong. Please try again later.";
					request.setAttribute("link", link);
					request.setAttribute("message", message);
					getServletContext().getRequestDispatcher("/alert.jsp")
							.forward(request, response);
				}
			}
			else 
			{
				System.out.println("invalid connection");
			}
		}
		else
		{
			getServletContext().getRequestDispatcher(
					"/studentinvalid.jsp").forward(
					request, response);
		}

	}

}
