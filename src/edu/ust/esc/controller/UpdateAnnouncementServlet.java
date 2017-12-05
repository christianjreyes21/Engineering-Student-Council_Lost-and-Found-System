package edu.ust.esc.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import edu.ust.esc.utility.sql.SQLOperations;

import java.sql.*;

/**
 * A Java servlet that handles file upload from client.
 * @author www.codejava.net
 */
@WebServlet("/editannouncement.html")
public class UpdateAnnouncementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String UPLOAD_DIRECTORY = "upload";
	private static final int THRESHOLD_SIZE 	= 1024 * 1024 * 3; 	// 3MB
	private static final int MAX_FILE_SIZE 		= 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE 	= 1024 * 1024 * 50; // 50MB

	
	
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
	/**
	 * handles file upload via HTTP POST method
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// checks if the request actually contains upload file
		if (!ServletFileUpload.isMultipartContent(request)) {
			PrintWriter writer = response.getWriter();
			writer.println("Request does not contain upload data");
			writer.flush();
			return;
		}
		
		String message;
		
		// configures upload settings
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(THRESHOLD_SIZE);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(MAX_FILE_SIZE);
		upload.setSizeMax(MAX_REQUEST_SIZE);
		
		// constructs the directory path to store upload file
		String uploadPath = getServletContext().getRealPath("/images");
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		try {
			// parses the request's content to extract file data
			List formItems = upload.parseRequest(request);
			Iterator iter = formItems.iterator();
			
			// iterates over form's fields
			int count=1;
			while (iter.hasNext()) {
				FileItem item = (FileItem) iter.next();
				// processes only fields that are not form fields
				if (item.isFormField()) 
				{
					String title = item.getString();
					item = (FileItem) iter.next();
					String body = item.getString();
					SQLOperations.updateAnnoucnements(title, body, Integer.toString(count), connection);
					System.out.println(count);
					System.out.println(title);
					System.out.println(body);
				}
				else
				{
					String fileName = "announcement"+count+".png";
					String filePath = uploadPath + File.separator + fileName;
					File storeFile = new File(filePath);
					count++;
					
					// saves the file on disk
					if(!item.getName().equals("")){
					item.write(storeFile);
					}
				}
			}
			
			message = "SUCCESSFUL UPDATE";
		} catch (Exception ex) {
			message = "Something went wrong. Please try again later.";
		}

		String link = "adminannounce.html";
		
		request.setAttribute("link", link);
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/alert.jsp")
				.forward(request, response);
	}
}
