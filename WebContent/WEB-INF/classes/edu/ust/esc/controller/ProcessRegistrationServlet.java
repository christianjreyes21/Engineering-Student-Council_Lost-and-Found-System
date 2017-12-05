package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ust.esc.utility.BeanFactory;
import edu.ust.esc.utility.sql.SQLOperations;
import edu.ust.esc.model.MemberBean;

import java.sql.*;

@WebServlet("/processregistration.html")
public class ProcessRegistrationServlet extends HttpServlet {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String position = request.getParameter("position");
		String picture = request.getParameter("picture");
		String email = request.getParameter("email");
		System.out.println(username);
		
		MemberBean member = 
				BeanFactory.getFactoryBean(username, password, firstName, lastName, position, picture, email);
		
		if (connection != null) {
			if (SQLOperations.addAdministratorMember(member, connection)){
				System.out.println("successful insert");
				request.setAttribute("member", member);
				getServletContext().getRequestDispatcher("/adminlogin.html").forward(request, response);
			} else {
				System.out.println("failed insert");
				getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
			}
		} else {
			System.out.println("invalid connection");
		}
	}

}
