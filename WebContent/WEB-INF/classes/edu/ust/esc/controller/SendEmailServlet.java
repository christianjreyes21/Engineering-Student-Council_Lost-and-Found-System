package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ust.esc.model.MemberBean;
import edu.ust.esc.model.StudentEntryBean;
import edu.ust.esc.utility.SendEmail;
import edu.ust.esc.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/sendemail.html")
public class SendEmailServlet extends HttpServlet {
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
		String complaint = request.getParameter("complaint");
		String body = request.getParameter("body");
		
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			MemberBean member = (MemberBean) session.getAttribute("member");
			StudentEntryBean studentEntry = SQLOperations.searchStudentEntry(complaint, connection);
			SQLOperations.deleteStudentEntry(studentEntry, connection);
			ServletContext sc = getServletContext();
			SendEmail.replyEmail(member, studentEntry, body,sc.getInitParameter("emailUsername"),sc.getInitParameter("emailPassword"));
			getServletContext().getRequestDispatcher("/admincomplainsx.html?a=all").forward(request,response);
		}
		else
		{
			getServletContext().getRequestDispatcher(
					"/adminlogininvalid.html").include(
					request, response);
		}
		
		
	}

}
