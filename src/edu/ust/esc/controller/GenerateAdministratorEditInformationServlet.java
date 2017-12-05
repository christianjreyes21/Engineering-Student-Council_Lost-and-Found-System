package edu.ust.esc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.ust.esc.model.MemberBean;


@WebServlet("/admineditaccount.html")
public class GenerateAdministratorEditInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	public void init() throws ServletException {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		HttpSession session=request.getSession(false);
		try{
		if(session.getAttribute("member")!=null)
		{
			MemberBean member = (MemberBean) session.getAttribute("member");
			request.setAttribute("member", member);
			getServletContext().getRequestDispatcher(
					"/admineditaccount.jsp").forward(request,
					response);
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
