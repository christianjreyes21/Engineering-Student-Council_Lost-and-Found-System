package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ust.esc.utility.sql.SQLOperations;
import edu.ust.esc.model.MemberBean;

import java.sql.*;

@WebServlet("/processlogin.html")
public class ProcessLoginServlet extends HttpServlet {
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
		
		
		try {
			if (connection != null) {
				MemberBean member = SQLOperations.retrieveAdministratorMember(username,
						connection);
				if (member.getUsername().equals(username)
						&& member.getPassword().equals(password)) {
					System.out.println("successful login");
					request.setAttribute("member", member);
					HttpSession session=request.getSession();
					session.setAttribute("member",member);
					getServletContext().getRequestDispatcher(
							"/admin.jsp").forward(request,
							response);
				} else {
					System.out.println("invalid password");
					String link = "adminlogin.jsp";
					String message = "Invalid Username or Password";
					request.setAttribute("link", link);
					request.setAttribute("message", message);
					getServletContext().getRequestDispatcher("/alert.jsp")
							.forward(request, response);
				}
			} else {
				System.out.println("invalid connection");
				String link = "index.html";
				String message = "Something went wrong! Please try again later.";
				request.setAttribute("link", link);
				request.setAttribute("message", message);
				getServletContext().getRequestDispatcher("/alert.jsp")
						.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("username does not exist");
			String link = "adminlogin.jsp";
			String message = "Invalid Username or Password";
			request.setAttribute("link", link);
			request.setAttribute("message", message);
			getServletContext().getRequestDispatcher("/alert.jsp")
					.forward(request, response);
		}
	}

}
