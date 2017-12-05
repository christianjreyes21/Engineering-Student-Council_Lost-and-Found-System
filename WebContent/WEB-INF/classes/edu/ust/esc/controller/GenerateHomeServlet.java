package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import edu.ust.esc.utility.Security;
import edu.ust.esc.utility.sql.SQLOperations;



@WebServlet("/index.html")
public class GenerateHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
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
			
			ResultSet rs = SQLOperations.getAllAnnouncements(connection);
			ResultSet rs1 = SQLOperations.getAllAnnouncements(connection);;
			request.setAttribute("result", rs);
			request.setAttribute("result1", rs1);
			getServletContext().getRequestDispatcher(
					"/index.jsp").forward(request,
					response);
		}

}
