package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ust.esc.model.MemberBean;
import edu.ust.esc.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/processchangeusername.html")
public class ChangeUsernameAdministratorServlet extends HttpServlet {
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
		String newUsername = request.getParameter("newUsername");
		String currentPassword = request.getParameter("password");
		
		HttpSession session=request.getSession(false);
		try{
		if(session.getAttribute("member")!=null)
		{
			MemberBean member = (MemberBean) session.getAttribute("member");
			member = SQLOperations.retrieveAdministratorMember(member.getUsername(), connection);
			if(member.getPassword().equals(currentPassword))
			{
				if(connection != null)
				{
					SQLOperations.updateAdministratorUsername(member.getUsername(), newUsername, connection);
					member.setUsername(newUsername);
					System.out.println(newUsername + " has been sucessfully updated!");
					getServletContext().getRequestDispatcher(
							"/profile.html").forward(request,
							response);
				}
				else {
					System.out.println("invalid connection");
				}
			}
			else
			{
				getServletContext().getRequestDispatcher(
						"/adminchangeuninvalid.jsp").forward(request,
						response);
			}
		}
		else
		{
			getServletContext().getRequestDispatcher(
					"/adminlogininvalid.html").include(
					request, response);
		}
		}
		catch(Exception e){getServletContext().getRequestDispatcher(
				"/adminlogininvalid.html").include(
				request, response);}
		
	}

}
