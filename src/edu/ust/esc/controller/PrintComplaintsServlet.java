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

import edu.ust.esc.utility.sql.SQLOperations;

@WebServlet("/printcomplains.html")
public class PrintComplaintsServlet extends HttpServlet {
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
		HttpSession session = request.getSession(false);
		try{
			String search = request.getParameter("search");
			if(search == null)
			{
				search = "";
			}
		if (session.getAttribute("member")!=null) {
			try {
				if (connection != null) {
					ResultSet rs = SQLOperations.getAllStudentEntryCategory(
							connection, "Facilities",search);
					ResultSet rs1 = SQLOperations.getAllStudentEntryCategory(
							connection, "Professors",search);
					ResultSet rs2 = SQLOperations.getAllStudentEntryCategory(
							connection, "Services",search);
					request.setAttribute("recordFacilities", rs);
					request.setAttribute("recordProfessors", rs1);
					request.setAttribute("recordServices", rs2);
					request.setAttribute("search", search);
					if (request.getParameter("a").equals("all"))
						getServletContext().getRequestDispatcher(
								"/printall.jsp").forward(request,
								response);
					else if (request.getParameter("a").equals("Facilities"))
						getServletContext().getRequestDispatcher(
								"/printfacilities.jsp").forward(request,
								response);
					else if (request.getParameter("a").equals("Professors"))
						getServletContext().getRequestDispatcher(
								"/printprofessors.jsp").forward(request,
								response);
					else if (request.getParameter("a").equals("Services"))
						getServletContext().getRequestDispatcher(
								"/printservices.jsp").forward(request,
								response);
				} else {
					System.out.println("Invalid Connection resource");
				}
			} catch (NullPointerException npe) {
				System.err.println("Invalid Connection resource - "
						+ npe.getMessage());
			} catch (Exception e) {
				System.err.println("Exception - " + e.getMessage());
			}
		} else {
			getServletContext().getRequestDispatcher("/adminlogininvalid.html")
					.include(request, response);
		}
		}
		catch(Exception e){getServletContext().getRequestDispatcher(
				"/adminlogininvalid.html").include(
				request, response);}
	}
	

}
