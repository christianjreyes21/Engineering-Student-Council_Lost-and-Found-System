package edu.ust.esc.utility.sql;

//import java.io.FileInputStream;
import java.sql.*;

import javax.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import edu.ust.esc.model.MemberBean;
import edu.ust.esc.utility.Security;
import edu.ust.esc.model.StudentEntryBean;
import edu.ust.esc.utility.sql.SQLCommands;

public class SQLOperations implements SQLCommands {

	private static Connection connection;
	
	private SQLOperations() {
	}
	// NEW CONNECTION
	private static Connection getDBConnection() {
		try {
		    InitialContext context = new InitialContext();
		    DataSource dataSource = (DataSource) 
		     context.lookup("java:comp/env/jdbc/UST-ESC-DS");
		    
		    if (dataSource != null) {
		    	connection = dataSource.getConnection();
		    } else {
		    	System.err.println("DataSource is NULL.");
		    }
		} catch (NamingException e) {
		    e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return connection;
	 }
	
	public static Connection getConnection() {
		return (connection!=null)?connection:getDBConnection();
	}
	
	//GET ALL ANNOUNCEMENTS
	public static ResultSet getAllAnnouncements(Connection connection) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = connection.prepareStatement(GET_ALL_ANNOUCNEMENTS);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllAnnouncements: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	// UPDATE ANNOUNCEMENTS
		public static int updateAnnoucnements(String title, String body, String id, Connection connection) {
			int updated = 0;
			try {
				connection.setAutoCommit(false);
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(EDIT_ANNOUCNEMENT);
		        pstmt.setString(1, title); 
		        pstmt.setString(2, body);
		        pstmt.setString(3, id);
		        updated = pstmt.executeUpdate();   
		        connection.commit();
			} catch (SQLException sqle) {
				System.out.println("SQLException - updateAnnoucnements: " 
					+ sqle.getMessage());
				
				try {
					connection.rollback();
				} catch (SQLException sql) {
					System.err.println("Error on Update Connection Rollback - " 
						+ sql.getMessage());
				}
				return updated; 
			}	
			return updated;
		}
	
	// ADD STUDENT ENTRY
	public static boolean addStudentEntry(StudentEntryBean studentEntry, 
		Connection connection) {
		
		try {
	        PreparedStatement pstmt = connection.prepareStatement(INSERT_STUDENT_ENTRY);
	        pstmt.setString(1, studentEntry.getLastName());
	        pstmt.setString(2, studentEntry.getFirstName()); 
	        pstmt.setString(3, studentEntry.getMiddleName());
	        pstmt.setString(4, studentEntry.getYearLevelAndSection());
	        pstmt.setString(5, studentEntry.getStudentNumber());
	        pstmt.setString(6, studentEntry.getEmailAddress());
	        pstmt.setString(7, studentEntry.getCategory());
	        pstmt.setString(8, studentEntry.getConcernnsAndComplaints());
	        pstmt.executeUpdate(); // execute insert statement  
		} catch (SQLException sqle) {
			System.out.println("SQLException - addStudent: " + sqle.getMessage());
			return false; 
		}	
		return true;
	}
	// SEARCH STUDENT ENTRY
	public static StudentEntryBean searchStudentEntry(String complaint, Connection connection) {
		StudentEntryBean studentEntry = new StudentEntryBean();
		try {
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(SEARCH_STUDENT_ENTRY);
	        pstmt.setString(1, complaint);          
	        ResultSet rs  = pstmt.executeQuery();
	        
	        while (rs.next()) { 
	        	studentEntry.setLastName(rs.getString("LastName"));
	        	studentEntry.setFirstName(rs.getString("FirstName"));
	        	studentEntry.setMiddleName(rs.getString("MiddleName"));
	        	studentEntry.setYearLevelAndSection(rs.getString("YearLevelAndSection"));
	        	studentEntry.setStudentNumber(rs.getString("StudentNumber"));
	        	studentEntry.setEmailAddress(rs.getString("EmailAddress"));
	        	studentEntry.setCategory(rs.getString("Category"));
	        	studentEntry.setConcernsAndComplaints(rs.getString("ConcernsAndComplaints"));
	        }
		} catch (SQLException sqle) {
			System.out.println("SQLException - searchStudentEntry: " 
					+ sqle.getMessage());
			return studentEntry; 
		}	
		return studentEntry;
	}
	// GET STUDENTS ENTRIES BY CATEGORY
	public static ResultSet getAllStudentEntryCategory(Connection connection,String category, String search) {
		ResultSet rs = null;
		search = "%"+search+"%";
		try {
			PreparedStatement pstmt = connection.prepareStatement(GET_ALL_STUDENT_ENTRY_CATEGORY);
			pstmt.setString(1, category);
			pstmt.setString(2, search);
			pstmt.setString(3, search);
			pstmt.setString(4, search);
			pstmt.setString(5, search);
			pstmt.setString(6, search);
			pstmt.setString(7, search);
			pstmt.setString(8, search);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllStudentEntryCategory: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	// UPDATE ADMINISTRATOR INFORMATION
	public static int updateAdministratorInformation(MemberBean member, Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(UPDATE_ADMINISTRATOR_INFORMATION);
	        pstmt.setString(1, member.getFirstName()); 
	        pstmt.setString(2, member.getLastName());
	        pstmt.setString(3, member.getEmail());
	        pstmt.setString(4, member.getPosition());
	        pstmt.setString(5, member.getUsername());
	        updated = pstmt.executeUpdate();   
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateAdministratorInformation: " 
				+ sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - " 
					+ sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	// CHANGE ANDMINISTRATOR PASSWORD
	public static int updateAdministratorPassword(String username, String newPassword, Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(UPDATE_ADMINISTRATOR_PASSWORD);
	        pstmt.setString(1, Security.encrypt(newPassword));
	        pstmt.setString(2, username);
	        updated = pstmt.executeUpdate();   
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateAdministratorPassword: " 
				+ sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - " 
					+ sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	
	// DELETE ADMINISTRATOR ENTRY
		public static synchronized int deleteAdministratorEntry(MemberBean member, 
				Connection connection) {
			int updated = 0;
			
			try {
				connection.setAutoCommit(false);
		        PreparedStatement pstmt = connection.prepareStatement(DELETE_ADMINISTRATOR_MEMBER);
		        pstmt.setString(1, member.getUsername());
		        updated  = pstmt.executeUpdate();
		        connection.commit();
			} catch (SQLException sqle) {
				System.out.println("SQLException - deleteAdministratorEntry: " + sqle.getMessage());
				
				try {
					connection.rollback();
				} catch (SQLException sql) {
					System.err.println("Error on Delete Connection Rollback - " + sql.getMessage());
				}
				return updated; 
			}	
			return updated;
		}
	
	// DELETE STUDENT ENTRY
	public static synchronized int deleteStudentEntry(StudentEntryBean studentEntry, 
			Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(DELETE_STUDENT_ENTRY);
	        pstmt.setString(1, studentEntry.getStudentNumber());   
	        pstmt.setString(2, studentEntry.getConcernnsAndComplaints()); 
	        updated  = pstmt.executeUpdate();
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - deleteStudentEntry: " + sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Delete Connection Rollback - " + sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	
	public static boolean addAdministratorMember(MemberBean member, 
			Connection connection) {
			
			try {
		        PreparedStatement pstmt = connection.prepareStatement(INSERT_ADMINISTRATOR_MEMBER);
		        pstmt.setString(1, member.getUsername());
		        pstmt.setString(2, Security.encrypt(member.getPassword())); 
		        pstmt.setString(3, member.getFirstName());
		        pstmt.setString(4, member.getLastName());
		        pstmt.setString(5, member.getPosition());
		        pstmt.setString(6, member.getEmail());  
		        //pstmt.setString(6, member.getPicture());
		        //FileInputStream fin=new FileInputStream(member.getPicture());
		        //pstmt.setBinaryStream(6, fin, fin.available());
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (Exception e) {
				System.out.println("SQLException - addMember: " + e.getMessage());
				return false; 
			}	
			return true;
		}
		
		public static MemberBean retrieveAdministratorMember(String username, 
			Connection connection) {
			MemberBean member = new MemberBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(RETRIEVE_ADMINISTRAOTOR_MEMBER);
		        pstmt.setString(1, username);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	member.setUsername(rs.getString("Username"));
		        	member.setPassword(Security.decrypt(rs.getString("Password")));
		        	member.setLastName(rs.getString("LastName"));
		        	member.setFirstName(rs.getString("FirstName"));
		        	member.setPosition(rs.getString("Position"));
		        	member.setEmail(rs.getString("EmailAddress"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - retrieveMember: " 
						+ sqle.getMessage());
				return member; 
			}	
			return member;
		}
		
		public static int searchStudentNumber (String studentNumber, Connection connection)
		{
			int counter = 0;
			try
			{
				PreparedStatement pstmt = connection.prepareStatement(VERIFY_STUDENT_NUMBER);
				pstmt.setString(1, studentNumber);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next())
				{
					counter = rs.getInt(1);
				}
			}
			catch (SQLException sqle) 
			{
				System.out.println("SQLException - searchStudentNumber: " 
						+ sqle.getMessage());
				return counter; 
			}	
			return counter;
		}
}
