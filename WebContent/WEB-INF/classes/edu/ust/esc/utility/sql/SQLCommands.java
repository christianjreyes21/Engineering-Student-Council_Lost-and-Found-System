package edu.ust.esc.utility.sql;

public interface SQLCommands {

	String INSERT_STUDENT_ENTRY = "insert into StudentEntries(LastName, FirstName, MiddleName, YearLevelAndSection, StudentNumber, EmailAddress, Category, ConcernsAndComplaints) values(?,?,?,?,?,?,?,?)";
	String GET_ALL_STUDENT_ENTRY = "select * from StudentEntries";
	String GET_ALL_STUDENT_ENTRY_CATEGORY = "select * from StudentEntries where Category=?";
	String EDIT_ANNOUCNEMENT = "update Announcements set title = ? , body = ? where id = ?";
	String GET_ALL_ANNOUCNEMENTS = "select * from Announcements";
	
	String UPDATE_ADMINISTRATOR_USERNAME = "update Administrator set Username = ? where Username = ?";
	String UPDATE_ADMINISTRATOR_PASSWORD = "update Administrator set Password = ? where Username = ?";
	String INSERT_ADMINISTRATOR_MEMBER = "insert into Administrator(Username, Password, FirstName, LastName, Position, EmailAddress) values(?,?,?,?,?,?)";
	String RETRIEVE_ADMINISTRAOTOR_MEMBER = "select * from Administrator where Username=?";
	
	String SEARCH_STUDENT_ENTRY = "select * from StudentEntries where ConcernsAndComplaints = ?";
	String DELETE_STUDENT_ENTRY = "delete from StudentEntries where StudentNumber = ? and ConcernsAndComplaints = ?";
	
	String VERIFY_STUDENT_NUMBER = "select count(*) from Students where StudentNumber = ?";
}
